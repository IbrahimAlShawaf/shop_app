import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_app/screens/AboutUs.dart';
import 'package:plant_app/screens/home/login_screen/loginscreen.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final _auth = FirebaseAuth.instance;
  final _textcolor = Colors.purple[900];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Color.fromARGB(166, 89, 121, 226),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/logo.jpg'),
              width: 350,
              height: 250,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'عــالم الفضة',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 254, 254))),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              color: Color.fromARGB(255, 245, 242, 242),
              thickness: 1.0,
              height: 3.0,
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(FontAwesomeIcons.newspaper),
                    iconSize: 35,
                    color: Colors.grey[900],
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  Text(
                    'الرئيسية',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 251, 250, 252)),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AboutUs()));
              },
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AboutUs()));
                    },
                    icon: Icon(FontAwesomeIcons.chalkboardTeacher),
                    iconSize: 35,
                    color: Colors.grey[900],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    'من نحن',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 249, 252)),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                _auth.signOut();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  IconButton(
                    onPressed: (() {
                      _auth.signOut();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    }),
                    icon: Icon(
                      FontAwesomeIcons.xmark,
                    ),
                    iconSize: 35,
                    color: Colors.grey[900],
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  Text(
                    'خروج',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 251, 250, 252)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
