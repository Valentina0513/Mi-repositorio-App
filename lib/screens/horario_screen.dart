import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'docentes_screen.dart';
import 'materias_screen.dart';

class HorarioScreen extends StatefulWidget {
  @override
  _HorarioScreenState createState() => _HorarioScreenState();
}

class _HorarioScreenState extends State<HorarioScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horario de Clases'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String result) {
              if (result == 'Docentes') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DocentesScreen()),
                );
              } else if (result == 'Materias') {
                Navigator.push( 
                  context, MaterialPageRoute(builder: (context) => MateriasScreen()), 
                );
              } else if (result == 'Agregar Clase') {
                // Lógica para agregar una clase
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Docentes',
                child: Text('Docentes'),
              ),
              const PopupMenuItem<String>(
                value: 'Materias',
                child: Text('Materias'),
              ),
              const PopupMenuItem<String>(
                value: 'Agregar Clase',
                child: Text('Agregar Clase'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            calendarFormat: CalendarFormat.week,
            startingDayOfWeek: StartingDayOfWeek.monday,
            headerStyle: HeaderStyle(formatButtonVisible: false),
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: Center(child: Text('')),
          ),
        ],
      ),
    );
  }
}

