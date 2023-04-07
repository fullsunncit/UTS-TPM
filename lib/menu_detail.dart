import 'package:flutter/material.dart';

class MenuDetail extends StatefulWidget {
  const MenuDetail({Key? key}) : super(key: key);

  @override
  State<MenuDetail> createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAF5FF),
      appBar: AppBar(
        title: Text('Menu Detail'),
        backgroundColor: Color(0xff19376D),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Biodata',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset("assets/rosy.jpeg", width: 200, height: 220),
            Card(
              margin: const EdgeInsets.only(top: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 10,
              child: Container(
                height: 120,
                width: 360,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Nama'),
                        Text('NIM'),
                        Text('Kelas'),
                        Text('TTL'),
                        Text('Cita-cita'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('  : '),
                        Text('  : '),
                        Text('  : '),
                        Text('  : '),
                        Text('  : '),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Nur Rosydatun Nafiah'),
                        Text('123200001'),
                        Text('Teknologi dan Pemrograman Mobile (IF-C)'),
                        Text('Bratasena Adiwarna, 08 April 2002'),
                        Text('Front-End Developer'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
