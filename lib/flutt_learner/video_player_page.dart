import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';


enum source{Asset,Network}

class MyOwnPlayer extends StatefulWidget {
  const MyOwnPlayer({super.key});

  @override
  State<MyOwnPlayer> createState() => _MyOwnPlayerState();
}

class _MyOwnPlayerState extends State<MyOwnPlayer> {
  // Future<int> storagePermissionChecker;
  // Future<int> checkStoragePermisiion() async{final result = await PermissionHandler().ch}
  //video player functions
  late CustomVideoPlayerController cusVidPlayerController;

  source currentSource = source.Asset;
  
  Uri videoUtl = Uri.parse("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
  String assetVideoPath = "assets/videos/one.mp4";

  late bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeVideoPlayer(currentSource);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    cusVidPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ? const Center(
        child: CircularProgressIndicator(
          color: Colors.red,
        ),
      ) : Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
                  CustomVideoPlayer(
        customVideoPlayerController: cusVidPlayerController,),
                _sourceButtons()
        ],

      )
      
    );
  }

  Widget _sourceButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          color: Colors.blueGrey,
          child: const Text("Network",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          onPressed: (){
            currentSource = source.Network;
            initializeVideoPlayer(currentSource);
          }),
                  MaterialButton(
          color: Colors.blueGrey,
          child: const Text("Assets",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          onPressed: (){
            currentSource = source.Asset;
            initializeVideoPlayer(currentSource);
          })
      ],
    );
  }

  void initializeVideoPlayer(source Source){
    setState(() {
      isLoading = true;
    });
    VideoPlayerController _vidPlayerContoller;
    if(Source == source.Asset){
    _vidPlayerContoller = VideoPlayerController.asset(assetVideoPath)
    ..initialize().then((value) => {
      setState(() {
        isLoading  = false;
      })
    });
    }
    else if(Source == source.Network){
    _vidPlayerContoller = VideoPlayerController.networkUrl(videoUtl)
    ..initialize().then((value) => {
      setState(() {
       isLoading  = false;
      })
    });
    }
    else{
      return;
    }
    
    cusVidPlayerController = CustomVideoPlayerController(
      context: context, videoPlayerController: _vidPlayerContoller);
  }

  
}