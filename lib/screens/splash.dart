import 'dart:async';
import 'package:exam_project_5_modul/screens/screen1.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const Screen1(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFF3951),
      body: Column(
        children: [
          SizedBox(height: 330,),
          Center(child: Image(image: AssetImage("assets/images/Frame 56.png"))),
        ],
      ),
    );
  }
}
