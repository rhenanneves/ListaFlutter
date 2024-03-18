import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Integração de Imagens',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ImageExample(),
    );
  }
}

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integração de Imagens'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa0F9jAjuNpwVbR72eMjb2Jg81spZtTaq3u2pvluzBnq9ugmaRZBqd5oYtvKythmvdyxo&usqp=CAU',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/flutterlogo.png',
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
