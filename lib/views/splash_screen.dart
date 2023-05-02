import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hanuman_chalisa_flutter/constants/texts.dart';
import 'package:hanuman_chalisa_flutter/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
     Timer(Duration(seconds: 3), () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>  HomeScreen()));
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             Image.asset("assets/images/splash_img.png", height: 300,
             width: 300,),
            Text(splashText, style: TextStyle(color: Colors.black, fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
