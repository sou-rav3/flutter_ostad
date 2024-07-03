import 'package:flutter/material.dart';

void main(){
  runApp(IntroApp());
}


class IntroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('eSports App'),
        backgroundColor: Colors.blue,
      ),
        body: Center(
          child: Text('Welcome to eSports era',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 32,
          ),
          ),

        ),
      ),
    );
  }

}