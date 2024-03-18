import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Exercicio2")),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('São Paulo Futebol Clube'),
                  Image.network(
                    'https://yt3.googleusercontent.com/C8rCyrTuhCFBj7U0Od4-4ISbgp5i7OMfAudqi2h7vgcFOy70J6pSao6qG0YO6p7LpdTqlqbceQ=s900-c-k-c0x00ffffff-no-rj', // URL da primeira imagem
                    width: 100, // largura da imagem
                    height: 100, // altura da imagem
                  ),
                ],
              ),
              Column(
                children: [
                  Text('Morumbis'),
                  Image.network(
                    'https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2024/01/morumbis.jpeg', // URL da segunda imagem
                    width: 100, // largura da imagem
                    height: 100, // altura da imagem
                  ),
                ],
              ),
              Column(
                children: [
                  Text('SuperCopa do Brasil 2024'),
                  Image.network(
                    'https://s2-ge.glbimg.com/ga6qhoxzqzdr5IqaBckq9ezQ1Ys=/0x0:6000x3612/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2023/5/d/lvu9jXRNiSzaVZHDITnw/52653007946-df5015a399-o.jpg', // URL da terceira imagem
                    width: 100, // largura da imagem
                    height: 100, // altura da imagem
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
