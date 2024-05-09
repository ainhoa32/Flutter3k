import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Ejercicio4 extends StatelessWidget {
  const Ejercicio4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    double diametro = MediaQuery.of(context).size.width; //Ancho de la pantalla

    return Center(
      child: Container(
        
        child: Stack(
          
          children: [
            Positioned(
              left: diametro*0.3,
              child: Container(
                 decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
                width: diametro/4,
                height: diametro/4,
              ),
            ),
            Positioned(
              
              child: Container(
                
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                width: diametro/2,
                height: diametro/2,
              ),
            ),
            Container(
              margin:EdgeInsets.only(
                left: diametro*0.1,
                top: diametro*0.1,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
                
              ),
              width: diametro,
              height: diametro,
            ),
          ],
        ),
      ),
    );
  }
}
