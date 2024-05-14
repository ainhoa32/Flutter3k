import 'package:flutter/material.dart';

class MyImagenes extends StatelessWidget {
const MyImagenes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    //Scaffold es un widget que proporciona la estructura básica de
    //una aolicación, los drawers, bars, buttons, etc.
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          //Para usar la url de una imagen sacada de internet en vez de poner
          //Image.asset pondrías Image.network y pondrías la url
          //child: Image.asset(
            //"/Users/Tardes/Desktop/FlutterDef/Flutter3k/empty_testing_app/assets/images/imagen1.jpg",
            child: Image.network(
              "https://picsum.photos/id/237/200/300",
            width: 500,
            height: 500,
            //Deformamos en ancho y alto
            //fit: BoxFit.fill,
            //Si quieres que se adapte al contenedor
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress){
              if(loadingProgress == null){
                return child;
              }
              return CircularProgressIndicator();
            },
            ),
        ),
      ));
  }
}