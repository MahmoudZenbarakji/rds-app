import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rdsboxapp/screens/intro_screen/intro_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //state of the screen
    super.initState();
    Timer(
        Duration(milliseconds: 3000),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => intro_screens())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //height: 50,
            // width: 50,
            child: Center(
              heightFactor: 3,
              child: Image(image: AssetImage("assets/logo.png")),
            ),
          ),
        ],
      ),
    );
  }
}
