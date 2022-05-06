import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/screens/buy_now.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:firebase_database/firebase_database.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key key}) : super(key: key);

  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  TextEditingController second = TextEditingController();

  TextEditingController third = TextEditingController();

  final fb = FirebaseDatabase.instance;
  List items = [
    {
      "name": 'ahmed',
      "address": 'gaza',
      "card": 123456,
    },
  ];
  CollectionReference notesref = FirebaseFirestore.instance.collection("notes");
  //TextEditingController controller;
  var name, address, card;

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  addNotes() async {
    var formdata = formstate.currentState;
    if (formdata.validate()) {
      showMenu(context: context, position: RelativeRect.fill, items: items);
      formdata.save();
      await notesref.add({
        "name": name,
        "address": address,
        "card": card,
        "userid": FirebaseAuth.instance.currentUser.uid,
      });
      //Get.to(() => HomeScreen());
      //Navigator.of(context).pop();
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   controller = TextEditingController();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('بيانات الزبون'),
        // actions: [
        //   IconButton(
        //       onPressed: () async {
        //         final name = await sheetDialog();
        //         if (name == null || name.isEmpty) return;

        //         setState(() => this.name = name);
        //       },
        //       icon: const Icon(Icons.person_add_alt))
        // ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                // Row(
                //   children: [
                // Expanded(
                //     child: Text(
                //   'NAME:',
                //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                // )),
                // SizedBox(
                //   width: 12,
                // ),
                // Text(name),
                //   ],
                // ),
                Form(
                  key: formstate,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (val.length > 100) {
                            return "Name cant be less than 100 letter";
                          }
                          if (val.length < 6) {
                            return "Name cant be less than 6 letter";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          name = val;
                        },
                        maxLength: 30,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "Name",
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val.length > 100) {
                            return "Name cant be less than 100 letter";
                          }
                          if (val.length < 6) {
                            return "Name cant be less than 6 letter";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          address = val;
                        },
                        maxLength: 30,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "address",
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val.length > 100) {
                            return "Name cant be less than 100 letter";
                          }
                          if (val.length < 6) {
                            return "Name cant be less than 6 letter";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          card = val as int;
                        },
                        maxLength: 30,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "card",
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  child: Text('ADD PAYMENT'),
                  onPressed: () async {
                    await addNotes();
                    // Navigator.of(context).pop();
                  },

                  // onPressed: () async {
                  //   final name = await sheetDialog();
                  //   if (name == null || name.isEmpty) return;

                  //   setState(() => this.name = name);
                  // },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Future<String> sheetDialog() async {
  //   await showModalBottomSheet<String>(
  //     isScrollControlled: true,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(20),
  //         topRight: Radius.circular(20),
  //       ),
  //     ),
  //     context: context,
  //     builder: (context) {
  //       return ListView(
  //         children: [
  //           AlertDialog(
  //             title: Padding(
  //               padding:
  //                   const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
  //               child: Column(
  //                 mainAxisSize: MainAxisSize.min,
  //                 children: [
  //                   const Text(
  //                     'اضافة',
  //                     style: TextStyle(fontSize: 22),
  //                   ),
  //                   const SizedBox(
  //                     height: 30,
  //                   ),
  //                   TextFormField(
  //                     // ignore: missing_return
  //                     validator: (val) {
  //                       if (val.length > 100) {
  //                         return "Name cant be less than 100 letter";
  //                       }
  //                       if (val.length < 6) {
  //                         return "Name cant be less than 6 letter";
  //                       }
  //                       return null;
  //                     },
  //                     controller: controller,
  //                     onSaved: (val) {
  //                       name = val;
  //                     },
  //                     decoration: InputDecoration(hintText: 'ادخل الاسم كاملا'),
  //                   ),
  //                   const SizedBox(
  //                     height: 30,
  //                   ),
  //                   TextFormField(
  //                     validator: (val) {
  //                       if (val.length > 100) {
  //                         return "Name cant be less than 100 letter";
  //                       }
  //                       if (val.length < 6) {
  //                         return "Name cant be less than 6 letter";
  //                       }
  //                       return null;
  //                     },
  //                     onSaved: (val) {
  //                       address = val;
  //                     },
  //                     decoration: InputDecoration(hintText: 'ادخل العنوان'),
  //                   ),
  //                   const SizedBox(
  //                     height: 30,
  //                   ),
  //                   TextFormField(
  //                     validator: (val) {
  //                       if (val.length > 100) {
  //                         return "Name cant be larger than 100 number";
  //                       }
  //                       if (val.length < 6) {
  //                         return "Name cant be less than 6 number";
  //                       }
  //                       return null;
  //                     },
  //                     onSaved: (val) {
  //                       card = val as int;
  //                     },
  //                     keyboardType: TextInputType.number,
  //                     decoration: InputDecoration(
  //                       hintText: 'ادخل رقم البطاقة',
  //                     ),
  //                   ),
  //                   const SizedBox(
  //                     height: 30,
  //                   ),
  //                   ElevatedButton(
  //                     onPressed: () {
  //                       addNotes();
  //                       submit();
  //                     },
  //                     child: const Text(
  //                       'اضافة',
  //                       style: TextStyle(color: Colors.black, fontSize: 22),
  //                     ),
  //                     style: ElevatedButton.styleFrom(
  //                       minimumSize: const Size(double.infinity, 60),
  //                       primary: Colors.white,
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius: BorderRadius.circular(10),
  //                         side: const BorderSide(color: Colors.black, width: 2),
  //                       ),
  //                       elevation: 0,
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ),
//           ],
//         );
//       },
//     );
//   }

//   void submit() {
//     Navigator.of(context).pop(controller.text);
//     controller.clear();
//   }
}
