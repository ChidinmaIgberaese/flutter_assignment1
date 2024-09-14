// lib/main.dart
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'cart_page.dart';
import 'checkout_page.dart';
import 'payment_page.dart';
import 'bio_page.dart';
import 'services_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'contact_page.dart';
import 'logout_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/payment': (context) => PaymentPage(),
        '/bio': (context) => BioPage(),
        '/services': (context) => ServicesPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/contact': (context) => ContactPage(),
        '/logout': (context) => LogoutPage(),
      },
    );
  }
}
