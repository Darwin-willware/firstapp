import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:path_provider/path_provider.dart';

class MyLocalVideoGetter extends StatelessWidget {
  const MyLocalVideoGetter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video List Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<String> videoPaths;
  late List<VideoPlayerController> videoControllers;

  @override
  void initState() {
    super.initState();
    getLocalVideos();
  }

  void getLocalVideos() async {
    videoPaths = [];
    videoControllers = [];

    Directory? appDocDir = await getExternalStorageDirectory();
    String? appDocPath = appDocDir?.path;

    List<FileSystemEntity> files = Directory(appDocPath!).listSync();

    for (FileSystemEntity file in files) {
      if (file is File && file.path.endsWith('.mp4')) {
        videoPaths.add(file.path);
        videoControllers.add(VideoPlayerController.file(file));
      }
    }

    setState(() {}); 
  }

  @override
  void dispose() {
    for (var controller in videoControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video List Example'),
      ),
      body: ListView.builder(
        itemCount: videoPaths.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Video $index'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPlayerScreen(
                    videoController: videoControllers[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class VideoPlayerScreen extends StatelessWidget {
  final VideoPlayerController videoController;

  VideoPlayerScreen({required this.videoController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: videoController.value.aspectRatio,
          child: VideoPlayer(videoController),
        ),
      ),
    );
  }
}
