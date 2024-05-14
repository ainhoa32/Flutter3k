import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Contiene todo lo que viene siendo la aplicación
    return MaterialApp(
      //Puedes colocar los diferentes elementos de la aplicación: footer, header, lo que sea
      //En el lugar que quieras ya que no dependen los unos de los otros,
      //Flutter ya sabe donde tienenq ue colocarse según el nombre
      home: Scaffold(
        //Drawer es el menú desplegable
        drawer: Drawer(
          width: 200,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 120,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 45, 118, 23),
                  ),
                  child: Text(""),
                ),
              ),
              //list tile es cada elemento de la lista del drawer
              ListTile(
                //Leading es el primer elemento de una fila
                leading: const Icon(Icons.widgets),
                title: const Text('Widgets'),
                //cuando lo presionas:
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text('Ejercicios'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 45, 118, 23),
          elevation: 15,
          centerTitle: true,
          shadowColor: Color.fromARGB(255, 15, 222, 84),
          //leading: ,
          //Usa el scroll para que en todos los móviles por pequeños
          //que sean se vea el título
          title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text(' iVocado!',
                    overflow: TextOverflow.fade,
                    //Para cambiar la fuente tienes que descargar la fuente 
                    //y guardarla en una carpeta del proyecto
                    //En este caso está guardada en assets/fonts/Salium/Salium.ttf
                    //Solo guardas el ttf
                    //Después tiene que modificarlo en el pubspec
                    //Y ya podrías ponerlo como fontfamily
                    style: TextStyle(fontSize: 50,fontFamily: 'Salium', color: Color.fromARGB(255, 255, 255, 255))),
              ],
            ),
          ),
          //Actions son botones del header
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Log Out',
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          color: Color.fromARGB(255, 202, 240, 191),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(
                  size: 180,
                ),
                SizedBox(
                  height: 30,
                ),
                Text('by Álvaro Perera'),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: Color.fromARGB(255, 0, 0, 0),
          backgroundColor: Color.fromARGB(255, 45, 118, 23),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 129, 240, 134),
                ),
                label: 'Home',
                backgroundColor: Color.fromARGB(255, 123, 237, 165)),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 129, 240, 134),
              ),
              label: 'Profile',
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewEntryScreen()),
                  );
          },
          backgroundColor: Color.fromARGB(255, 102, 55, 19),
          child: const Icon(Icons.add, size: 45, color: Color.fromARGB(255, 255, 255, 255),),
        ),
      ),
    );
  }
}

class NewEntryScreen extends StatelessWidget {
  const NewEntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva entrada'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
