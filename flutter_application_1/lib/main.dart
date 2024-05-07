import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/container.dart';
import 'package:flutter_application_1/widgets/container2.dart';
import 'package:flutter_application_1/widgets/filasColumnas.dart';
import 'package:flutter_application_1/widgets/filasColumnasEjercicio.dart';
import 'package:flutter_application_1/widgets/text.dart';

void main() {
  runApp(const MyApp());
}

//Stateless no cambia de estado
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Widget que contiene texto
    return MaterialApp(
      //Aquí llama directamente al widget
      home: MyFilasColumnasEjercicio(),
    );
  }
}
