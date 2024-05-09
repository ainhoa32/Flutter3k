import 'package:flutter/material.dart';
import 'dart:math';

var numAle = Random();
class MyScrollColoresAle extends StatelessWidget {
  const MyScrollColoresAle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
          Text("Colores aleatorios"),
        ],
        )
      ),
      body: SingleChildScrollView(
        //por defecto ocupa todo el ancho de la página ya que 
        //no tiene texto, si tuviera texto ocuparía lo que ocuoa el texto
        //en cambio el alto si hay que ponerlo
        child: Column(
          children: List.generate(60, (index) => 
          Container(
            height: 80,
            color: Color.fromARGB(255, numAle.nextInt(256), numAle.nextInt(256), numAle.nextInt(256)),
          )),
        ),
      ),
    );
  }
}
