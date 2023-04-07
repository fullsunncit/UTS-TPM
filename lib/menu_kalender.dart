import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MenuKalender extends StatefulWidget {
  const MenuKalender({Key? key}) : super(key: key);

  @override
  _MenuKalenderState createState() => _MenuKalenderState();
}

enum TimeZone { wib, wit, wita }

class _MenuKalenderState extends State<MenuKalender> {
  DateTime _dateTime = DateTime.now();
  TimeZone _timeZone = TimeZone.wib;

  void _setTimeZone(TimeZone timeZone) {
    setState(() {
      _timeZone = timeZone;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_timeZone) {
      case TimeZone.wib:
        _dateTime = DateTime.now().add(Duration(hours: 0));
        break;
      case TimeZone.wit:
        _dateTime = DateTime.now().add(Duration(hours: 2));
        break;
      case TimeZone.wita:
        _dateTime = DateTime.now().add(Duration(hours: 1));
        break;
      default:
        _dateTime = DateTime.now().add(Duration(hours: 0));
        break;
    }

    return Scaffold(
      backgroundColor: Color(0xffDAF5FF),
      appBar: AppBar(
        title: Text('Menu Kalender'),
        backgroundColor: Color(0xff19376D),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              DateFormat('EEEE, dd MMMM yyyy').format(_dateTime),
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              DateFormat('HH:mm:ss').format(_dateTime),
              style: TextStyle(fontSize: 36.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
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
                      _setTimeZone(TimeZone.wib);
                    },
                    child: Text(
                      "WIB",
                      style: TextStyle(
                        color: _timeZone == TimeZone.wib
                            ? Colors.blue
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Container(
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
                      _setTimeZone(TimeZone.wita);
                    },
                    child: Text(
                      "WITA",
                      style: TextStyle(
                        color: _timeZone == TimeZone.wita
                            ? Colors.blue
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Container(
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
                      _setTimeZone(TimeZone.wit);
                    },
                    child: Text(
                      "WIT",
                      style: TextStyle(
                        color: _timeZone == TimeZone.wit
                            ? Colors.blue
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
