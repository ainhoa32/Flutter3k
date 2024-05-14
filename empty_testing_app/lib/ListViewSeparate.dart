import 'package:flutter/material.dart';

class MyListViewSeparate extends StatelessWidget {
const MyListViewSeparate({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: ListView.separated(
          itemBuilder: (context , int index) {
            return Container(
              height: 100,
              child: FlutterLogo(),
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
            );
          },
          separatorBuilder: (context, int index) {
            return Container(
              alignment: Alignment.center,
              child: Text(
                "------------$index------------",
                style: TextStyle(fontSize: 40),
              ),
              height: 100,
              color: Colors.purple,
            );
          },
          itemCount: 200),
    );
  }
}