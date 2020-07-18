import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/notification.dart';

class GetHelp extends StatefulWidget {
  @override
  _GetHelpState createState() => _GetHelpState();
}

class _GetHelpState extends State<GetHelp> {
  @override
  List<String> doctors = ["Dr.A","Dr.B","Dr.C","Dr.D","Dr.E","Dr.F","Dr.G","Dr.H","Dr.I","Dr.J","Dr.K","Dr.L","Dr.M","Dr.N","Dr.O","Dr.P","Dr.Q","Dr.R","Dr.S","Dr.T","Dr.U","Dr.V","Dr.W","Dr.X","Dr.Y","Dr.Z",];
  List<String> numbers = ["8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894","8667636894",];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Help"),
        centerTitle: true,
      ),
      body: getcard()
    );
  }

  Widget getcard(){
    return ListView.builder(
      itemCount: doctors.length,
        itemBuilder: (context,index)
    {
      return Card(
        child: ListTile(
          isThreeLine: true,
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Notificationscreen(name: doctors[index],location: "Max Hospital",)));

          },
          title: Text(doctors[index],style:TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("${numbers[index]}\nMax Hospital"),

        ),
      );

    }
    );
  }
}
