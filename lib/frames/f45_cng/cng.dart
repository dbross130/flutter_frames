import 'package:flutter/material.dart';

class Cng extends StatelessWidget {
  const Cng({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CNG',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red.shade700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Updating soon',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.lime.shade900,
                  fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
