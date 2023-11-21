import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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

          ):Image.file(File(image)),
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
            var read = await File(image).readAsBytes();
            var newfile = await File("/storage/emulated/filename.png").create(recursive: true);
            await newfile.writeAsBytes(read);
          }, 
          child: Text("create file and write that file as above file")),
        ],
      ),
    );
  }
}