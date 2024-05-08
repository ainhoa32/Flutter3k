import 'package:flutter/material.dart';

int cont = 1;

class MyTablero extends StatelessWidget {
  const MyTablero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: 
        creaTodasLasFilas(),
      ),
    );
  }
}


class CreaFilas extends StatelessWidget {
  const CreaFilas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: 
      creaTodasLasColumnas(cont++),
    );
  }
}

//Si ves que no cabe en la pantalla se puede usar Flexible()

class CreaColumnaPar extends StatelessWidget {
  const CreaColumnaPar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          color: Colors.brown,

        ),
      ],
    );
  }
}
class CreaColumnaImpar extends StatelessWidget {
  const CreaColumnaImpar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          color: Color.fromARGB(255, 186, 182, 152),
        ),
      ],
    );
  }
}

List<Widget> creaTodasLasColumnas(int cont){
  List<Widget> columnas = [];
  for(int i = 1; i < 9; i++){
    if(cont % 2 == 0){
      if(i%2==0){
       columnas.add(CreaColumnaPar());
    }else{
       columnas.add(CreaColumnaImpar());
    }
    }else{
      if(i%2==0){
       columnas.add(CreaColumnaImpar());
    }else{
       columnas.add(CreaColumnaPar());
    }
    }
  }
    return columnas;
}

List<Widget> creaTodasLasFilas(){
  List<Widget> filas = [];
  for(int i = 1; i < 9; i++){
    if(i%2==0){
       filas.add(CreaFilas());
    }else{
       filas.add(CreaFilas());
    }
  }
    return filas;
}