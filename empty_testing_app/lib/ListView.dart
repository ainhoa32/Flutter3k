import 'package:ej2/ListViewSeparate.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
const MyListView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView(
      children: [
        IconButton(
          onPressed: () {
            var route = MaterialPageRoute(
                //builder: (_) => MyListViewBuilder(),
                builder: (_) => MyListViewSeparate());
            Navigator.push(context, route);
          },
          icon: Icon(Icons.home),
        ),
        Container(
            height: 100,
            child: DefaultTextStyle(
              child: Text(""),
              style: TextStyle(color: Colors.black, fontSize: 58),
            )),
        ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
              18,
              (index) => Container(
                    color: Colors.primaries[index],
                    height: 50,
                    width: 50,
                  )),
        )
      ],
      /* List.generate(
        500,
        (index) {
          print("😇");
          return Container(
            width: 300,
            height: 200,
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.blue,
          );
        },
      ),
    ); */
    );
  }
}