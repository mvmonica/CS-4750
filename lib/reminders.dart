import 'package:flutter/material.dart';

class Reminders extends StatelessWidget {
  const Reminders({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Reminders'),
          ),
        )
    );
  }
}