import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/screens/AboutUs.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/home/login_screen/loginscreen.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // final _auth = FirebaseAuth.instance;
  // final _textcolor = Colors.purple[900];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        //width: 100,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/logo.jpg'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'عالم الفضة',
                style: GoogleFonts.changa(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    launch("https://www.facebook.com/ahmed.srour.9210256");
                  },
                  child: const Icon(
                    FontAwesomeIcons.facebookF,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch("https://wa.me/+972597365736");
                  },
                  child: const Icon(
                    FontAwesomeIcons.whatsapp,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {
                    launch("https://m.me/ahmed.srour.9210256");
                  },
                  child: const Icon(
                    FontAwesomeIcons.facebookMessenger,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
              onTap: () {
                Get.to(() => HomeScreen());
              },
              trailing: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                'الرئيسية',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.abrilFatface(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(const AboutUs());
              },
              trailing: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                'من نحن',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.abrilFatface(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(confirmOut());
              },
              trailing: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text(
                'خروج',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.abrilFatface(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  confirmOut() {
    Get.defaultDialog(
      backgroundColor: Colors.white,
      title: 'الخروج من التطبيق',
      titleStyle: GoogleFonts.changa(color: Colors.black),
      middleText: 'هل تريد الخروج من التطبيق؟',
      middleTextStyle: GoogleFonts.changa(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      textCancel: 'إلغاء',
      textConfirm: 'تأكيد',
      buttonColor: Colors.black,
      confirmTextColor: Colors.white,
      cancelTextColor: Colors.black,
      onConfirm: () {
        SystemNavigator.pop();
        //exit();
      },
      //onCancel: (){},
      radius: 60,
      barrierDismissible: false,
    );
  }
}
