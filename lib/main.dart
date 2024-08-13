import 'package:exam_project_5_modul/screens/home_screen.dart';
import 'package:exam_project_5_modul/screens/screen1.dart';
import 'package:exam_project_5_modul/screens/screen2.dart';
import 'package:exam_project_5_modul/screens/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Home());
}
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
