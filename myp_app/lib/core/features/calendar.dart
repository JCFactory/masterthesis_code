import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() => runApp(CalendarApp());

@override
Widget build(BuildContext context) {
  return MaterialApp(
      title: 'Meine Termine',
     //theme: ThemeData.dark(),
      home: CalendarApp()
  );
}

class CalendarApp extends StatefulWidget {
@override
  _CalendarAppState createState() => _CalendarAppState();
}

class _CalendarAppState extends State<CalendarApp> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meine Termine'),
      ),
      body: SingleChildScrollView(
        child:Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              initialCalendarFormat: CalendarFormat.week,
              calendarStyle: CalendarStyle(
                todayColor: Colors.orange,
                selectedColor: Theme.of(context).primaryColor,
                todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.white
                )
              ),
              calendarController: _controller,)
          ],
        ),
      ),
    );
  }
}
