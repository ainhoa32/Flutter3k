import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

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
            //mainAxisAlignment: MainAxisAlignment.center,
            //Hay que poner esto porque la fila se extiende hasta el final de la página
            //por lo que si "centras el título" no va a hacer nada ya que el título
            //ocupa desde el principio hasta el final de la página.
            mainAxisSize: MainAxisSize.min,
            children: [Text("Flutter "), Text("App")],
          ),
        ),
        //con esto scrolleas
        body: SingleChildScrollView(
          //Si es una columna por defecto es axis.vertical
          //así que no haría falta ponerlo
          scrollDirection: Axis.horizontal,
          //con esto cambias el scrolleo de sentido
          //reverse: true,
          child: Row(
            children: List.generate(Colors.primaries.length, (index) => 
              Container(
                height: 50,
                //con el infinity completa toda la pantalla
                width: double.infinity,
                color: Colors.primaries[index],
                child: Text("Hola"),
                        )
                      )
                    ),
        )
                );
  }
}
