import 'package:flutter/material.dart';

//sobre StatelessWidget importas material
class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      //Obligatoriamente te pude que pongas el estilo
      style: TextStyle(),
      child: Center(
        child: Container(
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(
              Radius.circular(300),
            ),
            ),
          //alignment: Alignment.topLeft,
          alignment: Alignment.center,
          //padding: EdgeInsets.all(20),
          //padding: EdgeInsets.only(
            //bottom: 45,
            //left: 20,
          //),
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.only(
            //left: 40,
          ),
          child: Text(
            "Sigue el curso"
            "Mañana es martes",
            style: TextStyle(
              fontSize: 35,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
