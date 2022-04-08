import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      backgroundColor: Color.fromARGB(166, 89, 121, 226),
      appBar: AppBar(
        title: Text('نبذة عن المشروع'),
        elevation: 5.0,
        shadowColor: Colors.white,
        backgroundColor: Color.fromARGB(166, 89, 121, 226),
      ),
      // drawer: MyDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Divider(
            height: 6.0,
            thickness: 4.0,
            color: Colors.yellow,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            ' بطاقة تعريف بالمشروع ومجاله ',
            textAlign: TextAlign.center,
            style: TextStyle(
              shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 20.0,
                        ),
                      ],
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
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
                            color: Colors.white),
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
                          child: const Icon(FontAwesomeIcons.phoneAlt),
                          onPressed: () {
                            launch('tel: +');
                          }),
                      const SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green[900]),
                          child: const Icon(FontAwesomeIcons.whatsapp),
                          onPressed: () {
                            launch('http://wa.me/+');
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
                  height: 6.0,
                  thickness: 4.0,
                  color: Colors.yellow,
                ),
                const SizedBox(
                  height: 20,
                ),
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
                    image: AssetImage('assets/images/2.jpg'),
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
                      ' فراس منصور عمر ',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
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
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 9, 32, 236)),
                          child: const Icon(FontAwesomeIcons.facebook),
                          onPressed: () {
                            launch('https://www.facebook.com/firas.omar.31/');
                          }),
                      const SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 37, 37, 37)),
                          child: const Icon(FontAwesomeIcons.github),
                          onPressed: () {
                            launch('https://github.com/ferasomar2');
                          }),
                      const SizedBox(
                        width: 15,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 48, 118, 224)),
                          child: const Icon(FontAwesomeIcons.twitter),
                          onPressed: () {
                            launch('https://twitter.com/ferasMomar1');
                          }),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 6.0,
                  thickness: 4.0,
                  color: Colors.yellow,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'مجال المشروع',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 20.0,
                        ),
                      ],
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'يقع مجال المشروع في حقل تطبيقات الهواتف الذكية، فهو تطبيق خاص بالتجارة الالكترونية لجميع الناس الذين يملكون هواتف ذكية، فيستطيع جميع الأشخاص استعراض المنتجات وشراءها من خلال التطبيق حيث يتم إضافة المنتج الى سلة المشتريات ويتم دفع قيمة المشتريات من خلال ادخال بيانات بطاقة الدفع المسبق (الفيزا كارد) ويتم خصم قيمة السلة من بطاقة المشتري ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
