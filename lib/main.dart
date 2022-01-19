import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eat Good Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final pages = [
    Container(
      color: Color(0xFF7F7689),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "images/calcium.png",
              width: 320.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Eat Healthy Foods",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                    fontFamily: 'Bebas',
                  ),
                ),
                Text(
                  "Calcium",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFF3A342D),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'),
                ),
                SizedBox(height: 20.0),
                Divider(color: Colors.black38),
                Text(
                  "Nonfat and low-fat dairy, dairy substitutes, \nbroccoli, dark, "
                      "leafy greens"
                      "and sardines",
                  style: TextStyle(
                      color: Color(0xFFA1B6CC),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF34210B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "images/potassium.png",
              width: 320.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Eat Healthy Foods",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                    fontFamily: 'Bebas',
                  ),
                ),
                Text(
                  "Potassium",
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Color(0xFFE8BB57),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFFE8BB57)),
                Text(
                  "Bananas, \n"
                      "cantaloupe, raisins, \n"
                      "nuts, fish, and"
                      "spinach and other \n"
                      " dark greens.",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF21323D),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset("images/fiber.png", width: 320.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Eat Healthy Foods",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                    fontFamily: 'Bebas',
                  ),
                ),
                Text(
                  "Fiber",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFF888C76),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'),
                ),
                SizedBox(height: 20.0),
                Divider(color: Colors.blueGrey),
                Text(
                  "Legumes (dried beans and peas) \n whole-grain foods and brans,\n"
                      "seeds, apples, strawberries,\n"
                      "carrots, raspberries, and colorful fruit and vegetables",
                  style: TextStyle(
                      color: Color(0xFFD4D4D2),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF2F1B0A),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "images/magne.png",
              width: 320.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Eat Healthy Foods",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                    fontFamily: 'Bebas',
                  ),
                ),
                Text(
                  "Magnesium",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFFCC8E57),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFFCC8E57)),
                Text(
                  "TSpinach, black beans,\n"
                      "peas, and almonds",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF5A504B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "images/vitamina.png",
              width: 320,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Eat Healthy Foods",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFC1C1C2),
                    fontFamily: 'Bebas',
                  ),
                ),
                Text(
                  "Vitamin A",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFFCC8E57),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'
                  ),
                ),
                SizedBox(height: 20.0),
                Divider(color: Colors.blueGrey),
                Text(
                  "Eggs, milk, carrots,\n"
                      "sweet potatoes, and cantaloupe",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF717574),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "images/vitaminc.png",
              width: 320,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Eat Healthy Foods",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                    fontFamily: 'Bebas',
                  ),
                ),
                Text(
                  "Vitamin C",
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Color(0xFFBCB2A3),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
                SizedBox(height: 20.0),
                Divider(color: Colors.black38),
                Text(
                  "Oranges, strawberries, tomatoes,\n"
                      "kiwi, broccoli, and red and \n"
                      "green bell peppers",
                  style: TextStyle(
                      color: Color(0xFFA1B6CC),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF5C787C),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "images/vitamind.png",
              width: 320,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Eat Healthy Foods",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFA1B6CC),
                    fontFamily: 'Bebas',
                  ),
                ),
                Text(
                  "Vitamin D",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Color(0xFFD2F3F4),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'
                  ),
                ),
                SizedBox(height: 20.0),
                Divider(color: Color(0xFFD2F3F4)),
                Text(
                  "Avocados, nuts, seeds,"
                      "whole-grain foods, and spinach\n"
                      "and other dark leafy greens.",
                  style: TextStyle(
                      color: Color(0xFFA1B6CC),
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Foods For life', style: TextStyle(fontFamily: 'Bebas', color: Colors.white),),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              accountName: Text('One Tap Everything'),
              accountEmail: Text('Everything is at one app with full details.'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/bd.png'),
              ),
            ),
            ListTile(
              title: Text('Foods'),
              onTap: (){},
              trailing: Icon(Icons.edit_attributes_rounded),
            ),
            ListTile(
              title: Text('Countries'),
              onTap: (){},
              trailing: Icon(Icons.vpn_lock_sharp),
            ),
            ListTile(
              title: Text('Space'),
              onTap: (){},
              trailing: Icon(Icons.wb_iridescent_rounded),
            ),
            ListTile(
              title: Text('Company'),
              onTap: (){},
              trailing: Icon(Icons.apartment_outlined),
            ),
            ListTile(
              title: Text('Planets'),
              onTap: (){},
              trailing: Icon(Icons.wifi_tethering_rounded),
            ),
            ListTile(
              title: Text('Stars'),
              onTap: (){},
              trailing: Icon(Icons.wb_sunny_outlined),
            ),
            ListTile(
              title: Text('World'),
              onTap: (){},
              trailing: Icon(Icons.workspaces_filled),
            ),
            ListTile(
              title: Text('Vitamins and Minerals'),
              onTap: (){},
              trailing: Icon(Icons.whatshot_sharp),
            ),
            ListTile(
              title: Text('About us'),
              onTap: (){},
              trailing: Icon(Icons.error),
            ),
            ListTile(
              title: Text('Contact Us'),
              onTap: (){},
              trailing: Icon(Icons.phone),
            ),
          ],
        ),
      ),
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        enableSideReveal: true,
        waveType: WaveType.liquidReveal,
      ),
    );
  }
}