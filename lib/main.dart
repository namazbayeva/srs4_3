import 'package:flutter/material.dart';
import 'push_screen.dart';
import 'push_remove_until_screen.dart';
import 'push_replacement_screen.dart';
import 'push_named_remove_screen.dart';
import 'push_replacement_named.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Устанавливаем начальный маршрут
      routes: {
        '/': (context) => MainScreen(), // Главный экран
        '/PushNamedRemoveScreen': (context) => PushNamedRemoveScreen(), // Маршрут для страницы PushNamedRemoveScreen
        '/PushReplacementNamedScreen': (context) => PushReplacementNamedScreen(), // Маршрут для страницы PushReplacementNamedScreen
      },
    );
  }
}
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PushScreen()));
              },
              child: Text('Push'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => PushRemoveUntilScreen()), (route) => false);
              },
              child: Text('Push and Remove Until'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/PushNamedRemoveScreen', (route) => false);
              },
              child: Text('Push Named and Remove Until'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PushReplacementScreen()));
              },
              child: Text('Push Replacement'),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/PushReplacementNamedScreen');
              },
              child: Text('Push Replacement Named'),
            ),
            
          ],
        ),
      ),
    );
  }
}
