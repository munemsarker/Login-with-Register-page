import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation <double> _animation;
  late TextEditingController _emailController = TextEditingController(text: '');
  late TextEditingController _passwordController = TextEditingController(text: '');
  bool _obsecureText=true;

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 20));
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.linear)
      ..addListener(() {
        setState(() {

        });
      })..addStatusListener((animationStatus) {
        if (animationStatus == AnimationStatus.completed){
          _animationController.reset();
          _animationController.forward();
        }


      });
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: "https://cdn.pixabay.com/photo/2021/12/18/06/01/sunset-6878021_960_720.jpg",
            placeholder: (context, url) => Image.asset('images/002.jpg',fit: BoxFit.fill,),
            errorWidget: (context, url, error) => Icon(Icons.error),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: FractionalOffset(_animation.value, 0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                SizedBox(height: size.height *0.1),
                Text('Login',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueAccent, fontFamily: 'Pacifico')),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "don't have an account     ",style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      TextSpan(text: '    '),
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () =>
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>Register()
                            )),
                        text: 'Register',
                        style: TextStyle(color: Colors.orange,fontSize: 16,fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 40),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle:  TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrangeAccent),
                    ),
                  ),

                ),
                TextFormField(
                  obscureText: _obsecureText,
                  validator: (value){
                    if(value!.isEmpty || value.length<8){
                      return 'Please enter valid password';

                    }
                    else{
                      return null;
                    }


                  },
                  controller: _passwordController,
                  style: TextStyle(color: Colors.white70),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle:  TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),

                ),

                FlatButton(
                  onPressed: (){},
                  child: Text('Submit',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
