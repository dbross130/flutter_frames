import 'package:flutter/material.dart';

class ProductPriceRegister extends StatelessWidget {
  const ProductPriceRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PRODUCT & PRICE REGISTER',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
