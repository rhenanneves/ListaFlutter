import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listagem Dinâmica',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listagem Dinâmica'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                title: Text(items[index]),
                subtitle: Text('Informações fictícias'),
                leading: Icon(Icons.info),
                onTap: () {
                  // Ação ao clicar no item da lista
                  print('Item clicado: ${items[index]}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
