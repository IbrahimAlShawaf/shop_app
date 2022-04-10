import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/home/login_screen/backGround.dart';
import 'package:plant_app/screens/home/login_screen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                    'Register'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
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
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                    // print(email);
                    // print(password);
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
                    child: Text('SIGN UP',
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
                      '''Already have an account?''',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LoginPage(),
                        ),
                      ),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
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
