import 'package:flutter/material.dart';

class MyFilasColumnasEjercicio2 extends StatelessWidget {
const MyFilasColumnasEjercicio2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      //CrossAxisAlignment: Define cómo se alinearán los hijos a lo largo del eje transversal,
      //que es perpendicular al eje principal. Para Column , el eje transversal es horizontal,
      //mientras que para Row , es vertical.
      mainAxisAlignment: MainAxisAlignment.center,
      //stretch para que ocupe toda la pantalla
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: 80,
          height: 80,
          color: Colors.yellow,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.red,
        ),
      ],
    );
  }
}