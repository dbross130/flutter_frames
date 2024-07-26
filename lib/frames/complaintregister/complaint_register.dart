import 'package:flutter/material.dart';

class ComplaintRegister extends StatelessWidget {
  const ComplaintRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'COMPLAINT REGISTER',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
