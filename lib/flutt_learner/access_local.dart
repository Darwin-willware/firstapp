import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';

class getlocalAccess extends StatefulWidget {
  const getlocalAccess({super.key});

  @override
  State<getlocalAccess> createState() => _getlocalAccessState();
}

class _getlocalAccessState extends State<getlocalAccess> {
   String image = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Storage",
        style: TextStyle(
          color: Colors.black,
          backgroundColor: Colors.orangeAccent,
        ),
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),

          image.isEmpty?Container(

          ):Image.file(
            File(image),
            height: 100,
            width: 300,
            ),
          //pick a file first
          ElevatedButton(onPressed: ()async{
            //get permission
            var status = await Permission.storage.request();
            var image = await ImagePicker().pickImage(source: ImageSource.gallery);
            if(image !=null){
              setState(() {
                this.image = image.path;
              });
            }
          }, 
          child: Text("select  a image")),
          ElevatedButton(onPressed: () async{
            var status = await Permission.storage.request();
            //if(status==PermissionStatus.granted){
            var read = await File(image).readAsBytes();
            var newfile = await File("/Internal Storage/pictures/filename.png").create(recursive: true);
            await newfile.writeAsBytes(read);
           // }
          }, 
          child: Text("create file and write that file as above file")
          ),
          ElevatedButton(onPressed: () async{
            FilePickerResult? result = await FilePicker.platform.pickFiles();

             if (result != null) {
              File file = File(result.files.single.path!);
              Text(file.toString(),);
             } else {
             // User canceled the picker
              }
          }, child: Text("Fetch video"))
        ],
      ),
    );
  }
}