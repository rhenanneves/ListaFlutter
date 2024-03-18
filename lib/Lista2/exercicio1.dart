import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Básico',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Básico'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.android,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    Text(
                      'Flutter App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrH6nkda5V7VJox9SLIAoJmm0NUlftoqiJX1p7khLHqvqOcn6R-TWNaCt6IJlOxoDQxBQ&usqp=CAU',
                      height: 100.0,
                      width: 100.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Bem-vindo ao aplicativo Flutter!',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Este é um exemplo de um layout básico com Flutter. '
                'Você pode adicionar mais widgets e personalizar conforme necessário.',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
