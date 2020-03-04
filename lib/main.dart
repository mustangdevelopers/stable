import 'dart:async';

import 'package:fbla_app/bottomNav.dart';
import 'package:fbla_app/storage.dart';
import 'package:flutter/material.dart';

import 'intro.dart';



void main() {
  runApp(new MaterialApp(
    home: new splashTimer(),
    routes: <String, WidgetBuilder>{
      '/introState': (BuildContext context) => new introState(),
    },
  ));
}
//hi
class splashTimer extends StatefulWidget {
  @override
  splashScreen createState() => new splashScreen();

}



class splashScreen extends State<splashTimer>{

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, takeToHome);
  }

  void takeToHome(){

//    storage().readAccess().then((String value) {
//      setState(() {
//
//        if(value == 'true'){
//
//          Navigator.pushReplacement(
//            context,
//            MaterialPageRoute(builder: (context) => bottomNavState()),
//          );
//
//        }else{
//          //set value to true
//          storage().storeAccess('true');
//          Navigator.of(context).pushReplacementNamed('/introState');
//
//        }
//
//
//      });
//    });

    Navigator.of(context).pushReplacementNamed('/introState');



  }

  @override
  void initState() {
    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Color.fromARGB(100, 29, 50, 81),
      body: new Center(
        child: Image.asset(
          'image/mustangLogo.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );


  }

}
