import 'package:flutter/material.dart';

class MyTapBar extends StatelessWidget {
const MyTapBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    //definir el tab bar, le dices cuantos botones tiene y dónde quieres que empiece
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(tabs: 
          [Tab(icon: Icon(Icons.beach_access_sharp),),
          Tab(icon: Icon(Icons.cloud),),
          Tab(icon: Icon(Icons.thunderstorm))
          ]
          
          ),
          ),
           body: TabBarView(children: [
            Center(child: Text("Nos vamos a la playa"),),
            Center(child: Text("Un paseo con paragüas"),),
            Center(child: Text("Mejor nos quedamos en casa"),)
          ],
        ),
      ),
    );
  }
}