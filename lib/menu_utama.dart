import 'package:flutter/material.dart';
import 'package:uts_123200001/menu_kalender.dart';
import 'package:uts_123200001/menu_bangun.dart';
import 'package:uts_123200001/menu_profil.dart';
import 'package:uts_123200001/menu_login.dart';

class MenuUtama extends StatefulWidget {
  const MenuUtama({Key? key}) : super(key: key);

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAF5FF),
      appBar: AppBar(
        backgroundColor: Color(0xff19376D),
        title: Text('Menu Utama'),
        actions: <Widget>[
          Container(
            width: 100,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff19376D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return MenuLogin();
                }));
              },
              child: Text(
                "Log Out",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
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
                    return MenuBangun();
                  }));
                },
                child: Text(
                  "Menu Bangun Datar & Bangun Ruang",
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
                    return MenuKalender();
                  }));
                },
                child: Text(
                  "Menu Kalender",
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
                    return MenuProfil();
                  }));
                },
                child: Text(
                  "Menu Profile",
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
