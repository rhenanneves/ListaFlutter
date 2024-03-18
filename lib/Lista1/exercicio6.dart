import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Página Responsiva'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              // Tela grande: exibir texto grande
              return Center(
                child: Text(
                  'Texto Grande',
                  style: TextStyle(fontSize: 32.0),
                ),
              );
            } else {
              // Tela pequena: exibir texto pequeno
              return Center(
                child: Text(
                  'Texto Pequeno',
                  style: TextStyle(fontSize: 16.0),
                  
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
