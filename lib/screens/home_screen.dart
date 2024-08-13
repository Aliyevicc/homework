import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 250,),
          Center(child: Image(image: AssetImage("assets/images/Welcome To Home.png"))),
          SizedBox(height: 100,),
          Image(image: AssetImage("assets/images/Group 35.png")),
        ],
      ),
    );
  }
}
