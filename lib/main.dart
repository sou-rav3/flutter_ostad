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
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.grey),
                accountEmail: Text('abc@gmail.com'),
                accountName: Text('Sourav', style: TextStyle(
                  fontSize: 20,
                ),),
                currentAccountPicture: Image.asset('assets/images/sou.png'),
              ),
            ),

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
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.recent_actors), label: 'Recent'),
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
