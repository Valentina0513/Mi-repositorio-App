import 'package:flutter/material.dart';
import 'screens/horario_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión de Horarios de Clases',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HorarioScreen(),
    );
  }
}
