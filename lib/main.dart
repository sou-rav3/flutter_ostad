import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Home(), title: 'eFruits App');
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'eFruits App',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      drawer: Drawer(
        width: 205,
        backgroundColor: Colors.lightBlueAccent,
        child: ListView(
          children: [
            DrawerHeader(
                child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 45,
              ),
            )),
            ListTile(
              leading: Icon(
                Icons.home,
                size: 35,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                size: 35,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                size: 35,
              ),
              title: Text(
                'Account',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: 'Contact'),
        ],
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
