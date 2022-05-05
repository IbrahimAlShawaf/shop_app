import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'نبذة عن المشروع',
          style: GoogleFonts.changa(fontSize: 20, color: Colors.black),
        ),
        elevation: 5.0,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),

      // drawer: MyDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            ' بطاقة تعريف بالمشروع ومجاله ',
            textAlign: TextAlign.center,
            style: GoogleFonts.changa(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 20.0,
                  ),
                ],
                color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                //new card
                const Card(
                  elevation: 20,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.yellowAccent,
                      width: 5,
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image(
                    image: AssetImage('assets/images/1.jpeg'),
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  child: ListTile(
                    textColor: Colors.white,
                    tileColor: Colors.grey[500],
                    leading: const Image(
                      image: AssetImage('assets/images/logo.jpg'),
                      width: 50,
                      fit: BoxFit.contain,
                    ),
                    title: const Text(
                      'الطالب/ ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                      ),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                    subtitle: const Text(
                      ' أحمد سمير سرور ',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Contact Us:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 9, 32, 236)),
                          child: const Icon(
                            FontAwesomeIcons.facebook,
                          ),
                          onPressed: () {
                            launch(
                                'https://www.facebook.com/ahmed.srour.9210256');
                          }),
                      const SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red[900]),
                          child: const Icon(FontAwesomeIcons.phone),
                          onPressed: () {
                            launch('tel: +972597365736');
                          }),
                      const SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green[900]),
                          child: const Icon(FontAwesomeIcons.whatsapp),
                          onPressed: () {
                            launch('http://wa.me/+972597365736');
                          }),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                //new card

                const SizedBox(
                  height: 5,
                ),

                const Divider(
                  height: 3.0,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'مجال المشروع',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.changa(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 20.0,
                        ),
                      ],
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'يقع مجال المشروع في حقل تطبيقات الهواتف الذكية، فهو تطبيق خاص بالتجارة الالكترونية لجميع الناس الذين يملكون هواتف ذكية، فيستطيع جميع الأشخاص استعراض المنتجات وشراءها من خلال التطبيق حيث يتم إضافة المنتج الى سلة المشتريات ويتم دفع قيمة المشتريات من خلال ادخال بيانات بطاقة الدفع المسبق (الفيزا كارد) ويتم خصم قيمة السلة من بطاقة المشتري ',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 22,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
