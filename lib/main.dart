import 'package:flutter/material.dart';
import 'package:myapp/screens/lista_de_magos_screen.dart'; // Importe a tela

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magos do Mundo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const ListaDeMagosScreen(),
    );
  }
}