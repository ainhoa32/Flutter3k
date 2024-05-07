import 'package:flutter/material.dart';

class MyFilasColumnas extends StatelessWidget {
  const MyFilasColumnas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Se empieza retornando una columna ya que eso es lo que quiero que aparezca
    //en la pag
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //lista de elementos hijos
        Container(
          height: 50,
          color: Colors.blue,
        ),
        //Aquí añadimos una caja de determinado tamaño para separar
        //los 2 containers

        //SizedBox(
          //height: 20,
        //),
        Spacer(
          flex: 5,
        ),
        Container(
          height: 50,
          color: Colors.yellow,
        ),
        //SizedBox(
          //height: 20,
        //),
        Spacer(
          flex: 5,
        ),
        Container(
          height: 50,
          color: Color.fromARGB(255, 108, 36, 153),
        ),
      ],
    );
  }
}
