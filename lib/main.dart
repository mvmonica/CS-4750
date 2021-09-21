import 'package:flutter/material.dart';
import 'package:flutter_calendar/calendar.dart';
import 'package:flutter_calendar/todo.dart';
import 'package:flutter_calendar/reminders.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calendar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  final List<Widget> _tabs = [Calendar(), Todo(), Reminders()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) => setState((){
          _index = index;
        }),
        items: [
        new BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          title: Text('Calendar'),
        ), new BottomNavigationBarItem(
          icon: Icon(Icons.checklist),
          title: Text('To Do'),
        ),
        new BottomNavigationBarItem(
          icon: Icon(Icons.alarm),
          title: Text('Reminders'),
        ),
      ],
      ),
    );
  }
}