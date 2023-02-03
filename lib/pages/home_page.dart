import 'package:agroaquivr1/pages/editarperfil.dart';
import 'package:agroaquivr1/pages/historial.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'home.dart';

// ignore: camel_case_types
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  int _paginaActual = 0;
  final widgetOptions = [
    HomeWidget(),
    HomeWidget(),
    const HistorialWidget(),
    const EditarPerdilWidget(),
    ProfileScreen(
      actions: [
        SignedOutAction(
          ((context) {
            Navigator.of(context).pushNamed('/sigin');
          }),
        ),
      ],
    ),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(_paginaActual),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 57, 224, 141)),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), label: "Historial"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.outbond_sharp), label: "Salir"),
        ],
      ),
    );
  }
}
