import 'package:flutter/material.dart';


//Para crear la clase vacía pones fstless
class MyText extends StatelessWidget {
const MyText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
        //con el default text style no sale el subrayado predeterminado
        child: DefaultTextStyle(
          style: TextStyle(),
          child: Directionality(
            //Te obliga a poner el textDirection
            textDirection: TextDirection.ltr,
            //Para añadir los child y todo eso hay que hacer click sobre
            //Text y sobre la lamparita
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
              "sed do eiusmod tempor incididunt ut labore et dolore magna"
              "aliqua. Ut enim ad minim veniam, quis nostrud exercitation"
              "llamco laboris nisi ut aliquip ex ea commodo consequat. Duis"
              "aute irure dolor in reprehenderit in voluptate velit esse cillum"
              "dolore eu fugiat nulla pariatur. Excepteur sint occaecat"
              "cupidatat non proident, sunt in culpa qui officia deserunt mollit"
              "anim id est laborum.",
              //el TextAlign.start depende de la dirección del texto
              textAlign: TextAlign.start,
              maxLines: 2,
              //indica con puntos suspendivos que hay más texto
              //si usas en vez de ellipsis, fade, sale degradado
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                //Color.fromARGB(),
                color: Colors.blue,
                fontSize: 25,
                wordSpacing: 8.2,
                letterSpacing: 5.0,
                backgroundColor: Colors.orange,
                decoration: TextDecoration.underline
              ),
            ),
          ),
        ),
      );
  }
}