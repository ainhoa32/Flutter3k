import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyEjWhatsApp extends StatelessWidget {
  const MyEjWhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {},
                    tooltip: "Cámara",
                    icon: const Icon(Icons.camera_alt)),
                IconButton(
                    onPressed: () {},
                    tooltip: "Buscador",
                    icon: const Icon(Icons.search)),
                IconButton(
                    onPressed: () {},
                    tooltip: "Opciones",
                    icon: const Icon(Icons.more_vert)),
              ],
              backgroundColor: Colors.white,
              elevation: 5,
              shadowColor: Colors.grey,
              titleTextStyle: TextStyle(
                  color: const Color.fromARGB(255, 49, 207, 54),
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      "WhatsApp",
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              bottom: TabBar(
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 43, 183, 45),
                  ),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.white,
                  tabs: [
                    Tab(
                        child: Container(
                      width: 100,
                      child: Center(
                        child: Text(
                          "Todos",
                          style: TextStyle(
                            fontSize: 21,
                          ),
                        ),
                      ),
                    )),
                    Tab(
                        child: Container(
                      width: 100,
                      child: Center(
                        child: Text(
                          "No leídos",
                          style: TextStyle(
                            fontSize: 21,
                          ),
                        ),
                      ),
                    )),
                    Tab(
                        child: Container(
                      width: 100,
                      child: Center(
                        child: Text(
                          "Grupos",
                          style: TextStyle(
                            fontSize: 21,
                          ),
                        ),
                      ),
                    ))
                  ]),
            ),
            body: TabBarView(
              children: [
                construyeChats("Todos"),
                construyeChats("No leídos"),
                construyeChats("Grupos")
              ],
            )),
      ),
    );
  }

  Widget construyeChats(String tabName) {
    List<String> items = List.generate(12, (index) => '$tabName Item $index');
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(0),
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: const Color.fromARGB(255, 194, 191, 191), width: 1),
            ),
            child: InkWell(
                splashColor: Colors.green,
                onTap: () {},
                child: SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(6),
                          height: double.infinity,
                          color: Colors.blue,
                          child: Image.asset(
                              "/Users/Tardes/Desktop/FlutterDef/Flutter3k/empty_testing_app/assets/images/6927593.png")),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(6),
                            alignment: Alignment.topLeft,
                            child: Text(
                              items[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(6),
                            alignment: Alignment.topRight,
                            child: Text(
                              " ~ Hola que tal >:(",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 98, 98, 98),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(6),
                            alignment: Alignment.topRight,
                            child: Text(
                              "16/05/2024",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          );
        });
  }
}
