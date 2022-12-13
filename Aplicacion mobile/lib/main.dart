import 'package:utem_app/screens/profesores_screen.dart';
import 'package:utem_app/screens/infraestructura_screen.dart';
import 'package:utem_app/screens/integrantes_screen.dart';
import 'package:utem_app/screens/paro_screen.dart';
import 'package:utem_app/screens/bloc/provider.dart';
import 'package:utem_app/screens/home_screen.dart';
import 'package:utem_app/screens/login_screen.dart';
import 'package:utem_app/screens/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context)           => LoginScreen(),
          'home': (BuildContext context)            => HomeScreen(),
          'paro': (BuildContext context)            => ParoScreen(),
          'docente': (BuildContext context)         => ProfesoresScreen(),
          'infraestructura': (BuildContext context) => InfraestructuraScreen(),
          'integrantes': (BuildContext context)     => IntegrantesScreen(),
        },
        theme: ThemeData(primarySwatch: Colors.indigo),
      ),

      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],

      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoytes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(
          builder: (context) => ParoScreen(),
        );
      },
    );
  }
}
