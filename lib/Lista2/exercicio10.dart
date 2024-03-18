import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barra de Progresso Dinâmica',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProgressBarExample(),
    );
  }
}

class ProgressBarExample extends StatefulWidget {
  @override
  _ProgressBarExampleState createState() => _ProgressBarExampleState();
}

class _ProgressBarExampleState extends State<ProgressBarExample> {
  double _progressValue = 0.0;

  void _updateProgress() {
    setState(() {
      if (_progressValue < 1.0) {
        _progressValue += 0.1; // Atualiza o valor da barra de progresso
      } else {
        _progressValue = 0.0; // Reinicia o progresso quando atingir 100%
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de Progresso Dinâmica'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              value: _progressValue,
              minHeight: 10,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _updateProgress,
              child: Text('Atualizar Progresso'),
            ),
          ],
        ),
      ),
    );
  }
}
