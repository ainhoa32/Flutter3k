import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
const MyStack({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Center(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.orange,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
                    Text("soy un texto"),

        ],
      ),
    );
  }
}