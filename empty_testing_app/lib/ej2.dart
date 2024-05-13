import 'package:flutter/material.dart';

class Ej2 extends StatelessWidget {
const Ej2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('item $index'),
        );
      },
      )
    );
  }
}