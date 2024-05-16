import 'package:flutter/material.dart';

class MyEjemplo extends StatelessWidget {
const MyEjemplo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Center(child: Text("Imagen local con image.asset"),),
          Divider(),
          SizedBox(
            height: 100,
            child: Image.asset("/Users/Tardes/Desktop/FlutterDef/Flutter3k/empty_testing_app/assets/images/imagen1.jpg"),
          ),
          Divider(),
          Center(child: Text("Imagen kicak con image()"),),
          Divider(),
          Image(
            image: AssetImage("/Users/Tardes/Desktop/FlutterDef/Flutter3k/empty_testing_app/assets/images/imagen2.jpg")
            ),
          Divider(),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("/Users/Tardes/Desktop/FlutterDef/Flutter3k/empty_testing_app/assets/images/imagen1.jpg"),
          ),
          Divider(),
          Center(child: Text("Imagen en un clipReact")),
          Divider(),
          Padding(
            padding: EdgeInsets.all(30),
            child: Image.asset("/Users/Tardes/Desktop/FlutterDef/Flutter3k/empty_testing_app/assets/images/imagen2.jpg"),
          )
        ],

      ),
    );
  }
}