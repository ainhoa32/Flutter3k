import 'package:ej2/ejWhatsApp.dart';
import 'package:ej2/imagenes2.dart';
import 'package:ej2/imagenes.dart';
import 'package:ej2/tap_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new MyEjWhatsApp());
  }
}