import 'package:flutter/material.dart';
import 'package:uts_123200001/trapesium.dart';
import 'package:uts_123200001/tabung.dart';

class MenuBangun extends StatefulWidget {
  const MenuBangun({Key? key}) : super(key: key);

  @override
  State<MenuBangun> createState() => _MenuBangunState();
}

class _MenuBangunState extends State<MenuBangun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAF5FF),
      appBar: AppBar(
        backgroundColor: Color(0xff19376D),
        title: Text('Menu Bangun Datar dan Bangun Ruang'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff19376D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Trapesium();
                  }));
                },
                child: Text(
                  "Trapesium",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff19376D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Tabung();
                  }));
                },
                child: Text(
                  "Tabung",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
