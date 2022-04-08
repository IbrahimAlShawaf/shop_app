import 'package:flutter/material.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key key}) : super(key: key);

  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  TextEditingController controller;
  String name = '';

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  'NAME:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  width: 12,
                ),
                Text(name),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              child: Text('ADD PAYMENT'),
              onPressed: () async {
                final name = await sheetDialog();
                if (name == null || name.isEmpty) return;

                setState(() => this.name = name);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<String> sheetDialog() async {
    await showModalBottomSheet<String>(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return ListView(
          children: [AlertDialog(
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'اضافة',
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: controller,
                    onSubmitted: (_) => submit(),
                    decoration: InputDecoration(hintText: 'ادخل الاسم كاملا'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    //controller: controller,
                    decoration: InputDecoration(hintText: 'ادخل العنوان'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    //controller: controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'ادخل رقم البطاقة',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: submit,
                    child: const Text(
                      'اضافة',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 60),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.black, width: 2),
                      ),
                      elevation: 0,
                    ),
                  )
                ],
              ),
            ),
          ),
          ],
        );
      },
    );
  }

  void submit() {
    Navigator.of(context).pop(controller.text);
    controller.clear();
  }
}
