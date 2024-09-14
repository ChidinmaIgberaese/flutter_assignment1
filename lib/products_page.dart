import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

class ProductsPage extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: 'Asus Notebook Computer',
        price: 799.99,
        imageUrl: 'assets/images/asus_notebook_computer.jpg'),
    Product(name: 'A54', price: 249.99, imageUrl: 'assets/images/a54.jpg'),
    Product(name: 'Band', price: 49.99, imageUrl: 'assets/images/band.jpg'),
    Product(name: 'Buds', price: 59.99, imageUrl: 'assets/images/buds.png'),
    Product(name: 'MKB', price: 699.99, imageUrl: 'assets/images/mkb.jpg'),
    Product(name: 'MKB1', price: 719.99, imageUrl: 'assets/images/mkb1.jpg'),
    Product(name: 'MKB2', price: 739.99, imageUrl: 'assets/images/mkb2.jpg'),
    Product(name: 'S7 B', price: 899.99, imageUrl: 'assets/images/s7 b.jpg'),
    Product(name: 'S7 G', price: 919.99, imageUrl: 'assets/images/S7 G.jpg'),
    Product(name: 'S7 R', price: 929.99, imageUrl: 'assets/images/S7 R.jpg'),
    Product(name: 'S7', price: 949.99, imageUrl: 'assets/images/s7.jpg'),
    Product(name: 'S8 1', price: 999.99, imageUrl: 'assets/images/s8 1.jpg'),
    Product(name: 'S8', price: 1029.99, imageUrl: 'assets/images/s8.jpg'),
    Product(
        name: 'Samsung Galaxy A04E',
        price: 229.99,
        imageUrl: 'assets/images/samsung-galaxy-a04e-3gb-64gb v.jpg'),
    Product(
        name: 'Samsung Galaxy A04E',
        price: 239.99,
        imageUrl: 'assets/images/samsung-galaxy-a04e-3gb-64gb.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.asset(
              product.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            onTap: () {
              // Handle product tap (e.g., add to cart)
            },
          ),
        );
      },
    );
  }
}
