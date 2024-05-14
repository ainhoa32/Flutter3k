import 'package:flutter/material.dart';

class MyListBuilder extends StatelessWidget {
const MyListBuilder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 200,
          itemBuilder: (context, index) {
            print("$index Estoy en el ListViewBuilder");
            return Container(
              alignment: Alignment.center,
              height: 100,
              child: Text("$index c:", style: TextStyle(fontSize: 30)),
              color: Colors.blue,
              margin: EdgeInsets.symmetric(vertical: 10),
            );
          }),
    );
  }
}