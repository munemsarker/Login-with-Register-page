import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SafeArea(
        child: Stack(
          children: [
            Image(
              image: NetworkImage('https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGhvdG9ncmFwaHl8ZW58MHx8MHx8&w=1000&q=80'),
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 20, left: 20,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.blueAccent,
                        Colors.brown,
                      ]
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text('Photography Tips and tricks for you.',
                      style: TextStyle(
                        fontFamily: 'Bebas',
                        fontSize: 35,
                        color: Colors.white,
                        letterSpacing: 3.1,
                      ),
                    ),
                    Row(
                      children: [
                        ActionChip(
                          backgroundColor: Colors.red,
                          onPressed: (){},
                          label: Text('Buy Camera', style: TextStyle(
                            fontFamily: 'Source Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          ),
                        ),
                        SizedBox(
                          width: 25,

                        ),
                        ActionChip(
                          backgroundColor: Colors.green,
                          onPressed: (){},
                          label: Text('Tips & Tricks', style: TextStyle(
                            fontFamily: 'Source Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}