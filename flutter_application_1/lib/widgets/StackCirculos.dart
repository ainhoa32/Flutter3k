import 'package:flutter/material.dart';

class MyStackCirculos extends StatelessWidget {
  const MyStackCirculos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.red,
                      borderRadius: BorderRadius.all(
                Radius.circular(300),
              ),
            ),
          
          ),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.green,
                      borderRadius: BorderRadius.all(
                Radius.circular(300),
              ),
            ),
          
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue,
                      borderRadius: BorderRadius.all(
                Radius.circular(300),
              ),
            ),
          
          ),
        ],
      ),
    );
    
  }
}
