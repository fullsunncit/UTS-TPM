import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  TextEditingController num3 = TextEditingController();
  TextEditingController sisi1 = TextEditingController();
  TextEditingController sisi2 = TextEditingController();
  TextEditingController sisi3 = TextEditingController();
  double? Luas = 0, input1 = 0, input2 = 0, input3 = 0, resultKeliling = 0;
  luas() {
    //memanipulasi atau mengubah inputan dengan setstate
    setState(() {
      input1 = double.parse(num1.text);
      input2 = double.parse(num2.text);
      input3 = double.parse(num3.text);
      Luas = 0.5 *
          (input1! + input2!) *
          input3!; //! bang operator : inputan tidak boleh kosong
    });
  }

  keliling() {
    //memanipulasi atau mengubah inputan dengan setstate
    setState(() {
      input1 = double.parse(sisi1.text);
      input2 = double.parse(sisi2.text);
      input3 = double.parse(sisi3.text);
      resultKeliling = input1! +
          input2! +
          (2 * input3!); //! bang operator : inputan tidak boleh kosong
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAF5FF),
      appBar: AppBar(
        title: Text('Menu Trapesium'),
        backgroundColor: Color(0xff19376D),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Hitung Luas dan Keliling Trapesium',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset("assets/Trapesium.png"),
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
                            'Luas Trapesium',
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
                              hintText: 'Panjang DC',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                            width: 150,
                            height: 30,
                            child: TextFormField(
                              controller: num2,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: 'Panjang AB',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: SizedBox(
                            width: 150,
                            height: 30,
                            child: TextFormField(
                              controller: num3,
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
                              // num3.clear();
                            },
                            child: Text(
                              "Hitung Luas",
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
                            'Keliling Trapesium',
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
                              hintText: 'Panjang DC',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                            width: 150,
                            height: 30,
                            child: TextFormField(
                              controller: sisi2,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: 'Panjang AB',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: SizedBox(
                            width: 150,
                            height: 30,
                            child: TextFormField(
                              controller: sisi3,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: 'Panjang AD, CB',
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
                              // sisi3.clear();
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
                            "Hasil: $resultKeliling",
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
