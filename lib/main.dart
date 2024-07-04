import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp()); //Application
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('eSports App'),
        backgroundColor: Colors.blue,
      ),
        drawer: Drawer(
          width: 205,
          child: ListView(
            children: [
              DrawerHeader(child: Text('Menu',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black87
                ),)),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.contact_emergency),
                title: Text('Contact'),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text('Account'),
              )
            ],
          ),
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