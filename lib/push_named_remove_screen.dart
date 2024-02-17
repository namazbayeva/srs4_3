import 'package:flutter/material.dart';

class PushNamedRemoveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Push Named and Remove Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); 
          },
          child: Text('Назад'),
        ),
      ),
    );
  }
}
