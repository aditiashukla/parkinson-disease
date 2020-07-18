import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/gethelp.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'notification.dart';
import 'package:gallery_saver/gallery_saver.dart';

class Mainscreen extends StatefulWidget {


  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  File _image;
  String firstButtonText = "Take Test";
  String albumName ='Media';

  void _takePhoto() async {
    ImagePicker.pickImage(source: ImageSource.camera)
        .then((File recordedImage) {
      if (recordedImage != null && recordedImage.path != null) {
        setState(() {
          firstButtonText = 'saving in progress...';
        });
        GallerySaver.saveImage(recordedImage.path, albumName: albumName)
            .then((bool success) {
          setState(() {
            firstButtonText = 'image saved!';
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("P.Dr.",style: TextStyle(fontSize: 25),),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:18.0,top: 15),
                child: Row(

                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                      child: Text("US"),
                    ),
                    SizedBox(width: 10,),
                    Text("USER",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Divider(thickness: 2,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 200,

                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)

                      ),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                            _takePhoto();
                          },
                        child: Text(firstButtonText,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25  ),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 180,

                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)

                      ),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Notificationscreen(name:"Dr. Anupam Shukla",location: "Max Hospital" ,)));
                          },
                          child: Text("Notification",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                  Stack(
                    children: <Widget>[
                      Divider(thickness: 2,),
                      Padding(
                        padding: const EdgeInsets.only(left:110,top: 0),
                        child: Container(
                          height: 50,
                          width: 200,

                          decoration: BoxDecoration(
                              color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>GetHelp()));
                            },
                              child: Center(child: Text("Get Help!!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              _image == null? Container():Image.file(_image,height: 200,width: 200
                ,)
            ],
          )
        ],
      ),
    );
  }
}
