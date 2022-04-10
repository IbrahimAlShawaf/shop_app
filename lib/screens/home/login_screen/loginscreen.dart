import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app/screens/AboutUs.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/home/login_screen/backGround.dart';
import 'package:plant_app/screens/home/login_screen/registerscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: BackGround(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login to                                       عـالم الفضة '
                        .toUpperCase(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(height: 50),
                RaisedButton(
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (user != null) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeScreen()));
                        setState(() {
                          showSpinner = false;
                        });
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ],
                      ),
                    ),
                    child: Text('LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '''Don't have account?''',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => RegisterPage(),
                        ),
                      ),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 50,
                        width: 70,
                        child: Image.asset("assets/images/logo.jpg")),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AboutUs()));
                        },
                        child: Text(
                          'عــالم الفـضة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
