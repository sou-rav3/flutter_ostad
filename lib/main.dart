import 'package:flutter/material.dart';

void main() {
  runApp(const IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      title: 'eFruits App'
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('eFruits App'),
      ),

      body: Center(
        // child: Icon(Icons.home,
        // size: 90,
        // color: Colors.blue,),
        child: Image.asset('assets/images/staw.png'),

      ),
    );
  }
}
