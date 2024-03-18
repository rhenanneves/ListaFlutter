import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Deslizante',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Deslizante'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Página Inicial'),
              onTap: () {
                // Ação ao clicar no item do menu
                Navigator.pop(context); // Fecha o Drawer
                // Navegue para a página inicial ou execute ação específica
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil'),
              onTap: () {
                // Ação ao clicar no item do menu
                Navigator.pop(context); // Fecha o Drawer
                // Navegue para a tela de perfil ou execute ação específica
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {
                // Ação ao clicar no item do menu
                Navigator.pop(context); // Fecha o Drawer
                // Navegue para a tela de configurações ou execute ação específica
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Conteúdo da Página Principal'),
      ),
    );
  }
}
