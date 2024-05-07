import 'package:flutter/material.dart';

class MyFilasColumnasEjercicio extends StatelessWidget {
  const MyFilasColumnasEjercicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1)
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 40,
        ),
        child: Column(
          children: [
            SizedBox(height: 100),
            Container(
              height: 60,
              width: double.infinity,
               decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromRGBO(229, 236, 239, 1), Color.fromRGBO(0, 0, 0, 0.692)]
                  ),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 1), width: 2),
                ),
              child: Text(
                "1",
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 80,
              width: double.infinity,
             
              child: Text(
                "2",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
      decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromRGBO(229, 236, 239, 1), Color.fromRGBO(0, 0, 0, 0.692)]
                  ),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 1), width: 2),
                ),            child: Text(
                "3",
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 130,
              width: double.infinity,
              child: Text(
                "4",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromRGBO(229, 236, 239, 1), Color.fromRGBO(0, 0, 0, 0.692)]
                  ),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 1), width: 2),
                ),
              child: Text(
                "5",
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 80,
              width: double.infinity,
              child: Text(
                "6",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromRGBO(229, 236, 239, 1), Color.fromRGBO(0, 0, 0, 0.692)]
                  ),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 1), width: 2),
                ),
              child: Text(
                "7",
                textAlign: TextAlign.right,
              ),
            ),
          ], 
        ),
      ),
    );
  }
}

//el expanded es de un tamaño flexible
//realmente es como un container de tamaño flexible, normalmente ocupa el resto
//de espacio disponible. Este tiene un hijo que sería container, el cual tendrá 
//un tamaño dependiendo del expanded.
