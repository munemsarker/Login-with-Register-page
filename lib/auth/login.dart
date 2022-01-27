import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin{
  late AnimationController _animatedController;
  late Animation <double> _animation;
  late TextEditingController _emailController = TextEditingController(text: '');
  late TextEditingController _passwordController = TextEditingController(text: '');
  bool _obsecuredText=true;

 @override
  void dispose() {
    _animatedController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    _animatedController = AnimationController(vsync: this, duration: Duration(seconds: 20));
    _animation = CurvedAnimation(parent: _animatedController, curve: Curves.linear)
    ..addListener(() {
      setState(() {

      });
    })..addStatusListener((animationStatus) {
      if (animationStatus == AnimationStatus.completed){
        _animatedController.reset();
        _animatedController.forward();
      }
      });
    _animatedController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: "https://cdn.pixabay.com/photo/2022/01/20/17/51/office-desk-6952919_960_720.jpg",
            placeholder: (context, url) => Image.asset('images/street.jpg', fit: BoxFit.fill,),
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
                SizedBox(height: size.height *0.1,),
                Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blueAccent, fontFamily: 'Bebas'),),
                SizedBox(height: 10,),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account?        ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      TextSpan(
                        text: "Register account", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                TextFormField(
                  obscureText: _obsecuredText,
                  validator: (value){
                    if(value!.isEmpty  || value.length<8) {
                      return 'Please Enter a valid password';
                    }
                  },
                  controller: _passwordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                ),

                FlatButton(onPressed: (){}, child: Text('Submit', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
