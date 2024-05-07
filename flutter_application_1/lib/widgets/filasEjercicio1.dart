import 'package:flutter/material.dart';

class MyFilasEjercicio1 extends StatelessWidget {
const MyFilasEjercicio1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      //CrossAxisAlignment: Define cómo se alinearán los hijos a lo largo del eje transversal,
      //que es perpendicular al eje principal. Para Column , el eje transversal es horizontal,
      //mientras que para Row , es vertical.
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
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