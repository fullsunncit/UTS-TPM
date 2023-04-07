import 'package:flutter/material.dart';

class Tabung extends StatefulWidget {
  const Tabung({Key? key}) : super(key: key);

  @override
  State<Tabung> createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  TextEditingController num3 = TextEditingController();
  TextEditingController sisi1 = TextEditingController();
  TextEditingController sisi2 = TextEditingController();
  double? Luas = 0, input1 = 0, input2 = 0, resultVolume = 0;
  luas() {
    //memanipulasi atau mengubah inputan dengan setstate
    setState(() {
      input1 = double.parse(num1.text);
      input2 = double.parse(num2.text);
      Luas = 3.14 *
          (input1! * input1!) *
          input2!; //! bang operator : inputan tidak boleh kosong
    });
  }

  keliling() {
    //memanipulasi atau mengubah inputan dengan setstate
    setState(() {
      input1 = double.parse(sisi1.text);
      input2 = double.parse(sisi2.text);
      resultVolume = 2 *
          3.14 *
          input1! *
          (input1! + input2!); //! bang operator : inputan tidak boleh kosong
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAF5FF),
      appBar: AppBar(
        title: Text('Menu Tabung'),
        backgroundColor: Color(0xff19376D),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Hitung Luas Permukaan dan Volume Tabung',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset("assets/tabung.png", width: 380, height: 180),
            Card(
              margin: const EdgeInsets.only(top: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: Container(
                height: 300,
                width: 350,
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Luas Permukaan',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 30,
                          child: TextFormField(
                            controller: num1,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: 'Jari-jari(r)',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: SizedBox(
                            width: 150,
                            height: 30,
                            child: TextFormField(
                              controller: num2,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: 'Tinggi',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 30,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xff19376D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              luas();
                              // num1.clear();
                              // num2.clear();
                            },
                            child: Text(
                              "Luas Permukaan",
                              style: TextStyle(
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Hasil: $Luas",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Volume',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 30,
                          child: TextFormField(
                            controller: sisi1,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: 'Jari-jari(r)',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: SizedBox(
                            width: 150,
                            height: 30,
                            child: TextFormField(
                              controller: sisi2,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: 'Tinggi',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 30,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xff19376D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              keliling();
                              // sisi1.clear();
                              // sisi2.clear();
                            },
                            child: Text(
                              "Hitung Keliling",
                              style: TextStyle(
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Hasil: $resultVolume",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
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
