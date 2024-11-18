import 'package:flutter/material.dart';

class DocentesScreen extends StatelessWidget {
  final List<Map<String, String>> docentes = [
    {
      'nombre': 'Juan',
      'apellidos': 'Pérez',
      'materia': 'Matemáticas',
      'telefono': '123-456-7890',
      'correo': 'juan.perez@school.com'
    },
    {
      'nombre': 'María',
      'apellidos': 'González',
      'materia': 'Física',
      'telefono': '098-765-4321',
      'correo': 'maria.gonzalez@school.com'
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Docentes'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Nombre')),
            DataColumn(label: Text('Apellidos')),
            DataColumn(label: Text('Materia')),
            DataColumn(label: Text('Teléfono')),
            DataColumn(label: Text('Correo Electrónico')),
          ],
          rows: docentes.map((docente) {
            return DataRow(cells: [
              DataCell(Text(docente['nombre']!)),
              DataCell(Text(docente['apellidos']!)),
              DataCell(Text(docente['materia']!)),
              DataCell(Text(docente['telefono']!)),
              DataCell(Text(docente['correo']!)),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
