import 'package:flutter/material.dart';

class MateriasScreen extends StatelessWidget {
  final List<Map<String, String>> materias = [
    {
      'materia': 'Matemáticas',
      'duracion': '45 minutos',
      'docente_asignado': 'Juan Perez',
    },
    {
      'materia': 'Física',
      'duracion': '50 minutos',
      'docente_asignado': 'Maria González',
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materias'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            columns: const [
              DataColumn(label: Text('Materia')),
              DataColumn(label: Text('Duración')),
              DataColumn(label: Text('Docente Asignado')),
            ],
            rows: materias.map((materia) {
              return DataRow(cells: [
                DataCell(Text(materia['materia']!)),
                DataCell(Text(materia['duracion']!)),
                DataCell(Text(materia['docente_asignado']!)),
              ]);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
