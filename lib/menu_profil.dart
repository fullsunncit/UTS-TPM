import 'package:flutter/material.dart';
import 'package:uts_123200001/menu_detail.dart';

class MenuProfil extends StatefulWidget {
  const MenuProfil({Key? key}) : super(key: key);

  @override
  State<MenuProfil> createState() => _MenuProfilState();
}

class _MenuProfilState extends State<MenuProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAF5FF),
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Color(0xff19376D),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.only(top: 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: Container(
                height: 230,
                width: 365,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: 130,
                        child: Image.asset(
                          'assets/rosy.jpeg',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.person,
                              size: 90,
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Nama'),
                        Text('NIM'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 100,
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
                    return MenuDetail();
                  }));
                },
                child: Text(
                  "Detail",
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
