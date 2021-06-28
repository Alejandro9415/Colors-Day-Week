import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _date = DateTime.now().weekday;

  String _dia;

  Color _color;

  @override
  Widget build(BuildContext context) {
    if (_date == 1) {
      setState(() {
        _dia = "lunes";
        _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      });
    } else if (_date == 2) {
      setState(() {
        _dia = "martes";
        _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      });
    } else if (_date == 3) {
      setState(() {
        _dia = "miercoles";
        _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      });
    } else if (_date == 4) {
      setState(() {
        _dia = "jueves";
        _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      });
    } else if (_date == 5) {
      setState(() {
        _dia = "viernes";
        _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      });
    } else if (_date == 6) {
      setState(() {
        _dia = "sabado";
        _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      });
    } else if (_date == 7) {
      setState(() {
        _dia = "domingo";
        _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      });
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Days',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:
              Colors.accents[Random().nextInt(Colors.accents.length)],
          title: Text('Days Colors Week'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          color: _color,
          child: Text(
            '#${_dia.toUpperCase()}',
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
