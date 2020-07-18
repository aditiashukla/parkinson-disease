import 'package:flutter/material.dart';

class Notificationscreen extends StatefulWidget {

  String name;
  String location;

  Notificationscreen({this.name,this.location});
  @override
  _NotificationscreenState createState() => _NotificationscreenState(name,location);
}

class _NotificationscreenState extends State<Notificationscreen> {

  String name;
  String location;
  _NotificationscreenState(this.name,this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: <Widget>[
                    Text("Appointment Date:   ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("04/03/2020",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: <Widget>[
                    Text("Appointment Location:   ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text(location,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: <Widget>[
                    Text("Time:   ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("3:00 pm",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: <Widget>[
                    Text("Doctor:   ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text(name,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              hospitalImage()
            ],
          )
        ],
      ),
    );
  }
}
class hospitalImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("lib/image/54691.png",);
    Image image = Image(image: assetImage,);
    return Container(child: image,);
  }
}

