import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';



Future<List<File>> getVideoFiles() async {
  final Directory? extDir = await getExternalStorageDirectory();
  final String? directoryPath = extDir?.path;
  final List<File> videoFiles = [];

  for (FileSystemEntity entity in Directory(directoryPath!).listSync()) {
    if (entity is File && entity.path.endsWith('.mp4')) {
      videoFiles.add(entity);
    }
  }

  return videoFiles;
}


