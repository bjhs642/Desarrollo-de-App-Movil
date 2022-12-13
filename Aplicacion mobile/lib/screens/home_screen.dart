import 'dart:io';
import 'package:utem_app/screens/paro_screen.dart';
import 'package:utem_app/screens/profesores_screen.dart';
import 'package:utem_app/screens/providers/menu_provider.dart';
import 'package:utem_app/screens/utils/icono_string_util.dart';
import 'package:flutter/material.dart';
import 'infraestructura_screen.dart';
import 'integrantes_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Encuestas'),),
      appBar: AppBar(title: const Text('UTEM APP')),
      body: const Center(child: Text('UTEM APP')),
       
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/fondo.jpg')),
              ),
              child: Text('Menu Principal',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 25)),
            ),
            ListTile(
              leading: const Icon(Icons.flag_circle_outlined),
              title: const Text('Votación Paro',
                  style: TextStyle(color: Color.fromARGB(255, 126, 126, 126))),
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const ParoScreen());
                Navigator.push(context, route);
                //Navigator.pop(context);
              },
            ),
             ListTile(
              leading: const Icon(Icons.boy_rounded),
              title: const Text('Encuesta Docente',
                  style: TextStyle(color: Color.fromARGB(255, 126, 126, 126))),
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const ProfesoresScreen());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment_rounded),
              title: const Text('Encuesta Infraestructura',
                  style: TextStyle(color: Color.fromARGB(255, 126, 126, 126))),
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const InfraestructuraScreen());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: const Icon(Icons.group),
              title: const Text('Integrantes',
                  style: TextStyle(color: Color.fromARGB(255, 126, 126, 126))),
              onTap: () {
                final route = MaterialPageRoute(
                    builder: (context) => const IntegrantesScreen ());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app_outlined),
              title: const Text('Salir',
                  style: TextStyle(color: Color.fromARGB(255, 126, 126, 126))),
              onTap: () => exit(0),

              /* onTap: () {
                // // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                //Navigator.pop(context);
              }, */
            ),
          ],
        ),
      ),
    );
  }
}



 /*     
      //body: _lista(),
    );
  }
*/
/*   Widget _lista() {
    // menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {


        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(data, context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.purple),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          //    final route = MaterialPageRoute(
          //      builder: (context) => AlertPage()
          //    );
          //    Navigator.push(context, route);
        },
      );

      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    });
    return opciones;
  }
//}
 */