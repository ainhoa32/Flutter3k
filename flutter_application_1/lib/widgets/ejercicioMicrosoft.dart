import 'package:flutter/material.dart';

class MyEjercicioMicrosoft extends StatelessWidget {
const MyEjercicioMicrosoft({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            ),
                        Container(
              width: 80,
              height: 80,
              color: Colors.blue,
                            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
    
            ),
          ],
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
                            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            ),
                        Container(
              width: 80,
              height: 80,
              color: Colors.yellow,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
    
            ),
          ],
        ),
      ],
    );
  }
}