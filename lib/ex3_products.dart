import 'package:flutter/material.dart';

// EX 3 – The products (handout page: EX 3)
// Part 1: build ONE product card (images are in assets/ex3/).
// Part 2: create the Product enum (follow the UML in the handout).
// Part 3: extract the card into a StatelessWidget called ProductCard.
enum Product {
  dart(
    title: 'Dart',
    description: 'the best object language',
    image: 'assets/ex3/dart.png',
  ),
  flutter(
    title: 'Flutter',
    description: 'the best mobile widget library',
    image: 'assets/ex3/flutter.png',
  ),
  firebase(
    title: 'firebase',
    description: 'the best cloud database',
    image: 'assests/ex3/firebase.png',
  );

  const Product ({
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final String description;
  final String image;

}
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar (title: const Text('Products')),
        body: Container(
          color: Colors.blue,
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(Product.dart.image,height: 60),
                      const SizedBox(height: 10),
                      Text(Product.dart.title, style: TextStyle(fontSize: 24)),
                      const SizedBox(height: 4),
                      Text(
                        Product.dart.description,
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ), // YOUR CODE
      ),
    ),
  );
}
