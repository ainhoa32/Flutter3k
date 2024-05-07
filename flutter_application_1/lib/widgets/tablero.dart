import 'package:flutter/material.dart';

class MyTablero extends StatelessWidget {
const MyTablero({ Key? key }) : super(key: key);

  @override
  Widget build2(BuildContext context){
    return Row(
      children: [
          for(int i = 0; i < 7; i++)
            build3()
      ],
    );
  }
  Widget build3(){
      return Column(
        children: [
          Container(
            width: 80,
            height: 80,
          ),
        ],
      );
  }


}