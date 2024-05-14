import 'package:flutter/material.dart';

class MyEjWhatsApp extends StatelessWidget {
  const MyEjWhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                tooltip: "Cámara",
                icon: const Icon(Icons.camera_alt)
            ),
            IconButton(
                onPressed: () {},
                tooltip: "Buscador",
                icon: const Icon(Icons.search)
            ),
            IconButton(
                onPressed: () {},
                tooltip: "Opciones",
                icon: const Icon(Icons.more_vert)
            ),      
          ],
          backgroundColor: Colors.white,
          elevation: 10,
          shadowColor: Colors.grey,
          titleTextStyle: TextStyle(
            color: Colors.green,
            fontSize: 25,
            fontWeight: FontWeight.w800
          ),
          title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text(
                  "WhatsApp",
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
