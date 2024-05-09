import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStackCirculos extends StatelessWidget {
  const MyStackCirculos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double diametro = MediaQuery.of(context).size.width; //tamaño de la pantalla
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black
          )
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          //children es el padre, no pueden existir más padres,
          //children es el que recoge todos los childs.
          children: <Widget>[
            Container(
              //Se puede usar shape: BoxShape.circle,
              width: 70,
              height: 70,
              margin: EdgeInsets.only(left: 40, bottom: 180),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(300),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(208, 102, 102, 1),
                      Color.fromRGBO(255, 0, 0, 1)
                    ]),
              ),
            ),
            Container(
              width: 130,
              height: 130,
              margin: EdgeInsets.only(right: 80, bottom: 170),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(300),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(142, 186, 204, 1),
                      Color.fromRGBO(0, 187, 255, 1)
                    ]),
              ),
            ),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(300),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(151, 207, 141, 1),
                      Color.fromRGBO(25, 247, 0, 1)
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
