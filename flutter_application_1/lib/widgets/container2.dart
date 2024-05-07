import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//
class MyContainer2 extends StatelessWidget {
  const MyContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(),
      child: Center(
        child: Container(
          height: 460,
          width: 460,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  //es que tan oscura es, la difuminación de la sombre
                  blurRadius: 20,
                  offset: Offset(-20, 20),
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromRGBO(229, 236, 239, 1), Color.fromRGBO(11, 72, 108, 1)]
                ),
              borderRadius: BorderRadius.all(Radius.circular(150)),
              border: Border.all(color: Color.fromARGB(255, 25, 19, 101), width: 3),
              ),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromRGBO(219, 162, 162, 1), Color.fromRGBO(231, 6, 6, 1)]
                ),
                  color: Colors.red,
                  border: Border.all(color: Color.fromARGB(255, 105, 3, 3), width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(300),
                  )
                  ),
              child: Text(
                "Hi!",
                style: TextStyle(
                  fontSize: 40,
                ),
                ),
            ),
          ),
        ),
      ),
    );
  }
}
