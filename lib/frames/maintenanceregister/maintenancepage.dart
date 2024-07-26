import 'package:flutter/material.dart';

class Maintenancepage extends StatelessWidget {
  const Maintenancepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MAINTENANCE REGISTER',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
