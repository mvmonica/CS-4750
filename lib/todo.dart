import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('To Do'),
          ),
      )
    );
  }
}