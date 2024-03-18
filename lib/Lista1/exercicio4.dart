import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Tab> tabs = [
    Tab(icon: Icon(Icons.home), text: 'Home'),
    Tab(icon: Icon(Icons.settings), text: 'Configurações'),
    Tab(icon: Icon(Icons.person), text: 'Perfil'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(" Exercicio 4"),
            bottom: TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Conteúdo da Home")),
              Center(child: Text("Conteúdo das Configurações")),
              Center(child: Text("Conteúdo do Perfil")),
            ],
          ),
        ),
      ),
    );
  }
}
