import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product(
      imageUrl: 'data:image/jpeg;base64,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',
      title: 'Casa no Centro',
      description: 'Casa 2 quartos, banheiro e cozinha',
    ),
    Product(
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCwcmBMVDEaBFKekEyGJIm-yuSSt96EWFpPcRWhp2eYeAwfEASJlJbUmoy8on9CUy4gAw&usqp=CAU',
      title: 'Casa nos pires',
      description: 'Casa grande 2 quartos e um quintal enorme',
    ),
    Product(
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRozZko3H5pBI-CZ4EyOmSzpMNJD-R3NyjzG1XzUggZK3iSuY34sXvq1N6Daw56cjBFyYo&usqp=CAU',
      title: 'Casa na vila piza',
      description: 'Casa 3 quartos e um banheiro',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Produtos'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
    );
  }
}

class Product {
  final String imageUrl;
  final String title;
  final String description;

  Product({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            product.imageUrl,
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  product.description,
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
