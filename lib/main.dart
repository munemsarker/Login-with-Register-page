import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Hot Mail - Its hot!'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/gmail1.jpg'),
            Image.asset('images/gmail2.jpg'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.purple
              ),
              accountName: Text('Munem Sarker'),
              accountEmail: Text('munemuddinsarker@hotmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/munem.png'),
              ),
            ),
            ListTile(
              title: Text('Inbox'),
              onTap: (){},
              leading: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Draft'),
              onTap: (){},
              leading: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Spam!'),
              onTap: (){},
              leading: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Important'),
              onTap: (){},
              leading: Icon(Icons.add_alert),
            ),
            ListTile(
              title: Text('Non Expand'),
              onTap: (){},
              leading: Icon(Icons.arrow_back_outlined),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.purple
              ),
              accountName: Text('Switch account.'),
              accountEmail: Text('Instantly switch your account to other account.'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/gopal.jpg'),
              ),
            ),
            ListTile(
              title: Text('munembhai@hotmail.com'),
              onTap: (){},
              leading: Icon(Icons.add_reaction),
            ),
            ListTile(
              title: Text('nadimkhan@hotmail.com'),
              onTap: (){},
              leading: Icon(Icons.attach_email_rounded),
            ),
            ListTile(
              title: Text('bulbulhasan.12455@hotmail.com'),
              onTap: (){},
              leading: Icon(Icons.threesixty_sharp),
            ),
          ],
        ),
      ),
    );
  }
}