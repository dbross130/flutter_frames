import 'package:flutter/material.dart';

class Gstbillbook extends StatelessWidget {
  const Gstbillbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'GST BILL BOOK',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
              child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                border: Border.all(color: Colors.blue.shade50),
                borderRadius: BorderRadius.circular(8)),
            child: const Center(
              child: Text(
                'SALES',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
