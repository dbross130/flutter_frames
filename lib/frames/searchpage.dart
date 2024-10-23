import 'package:flutter/material.dart';

// ignore: camel_case_types
class searchpage extends StatelessWidget {
  final DateTime selectedDate;
  const searchpage({super.key, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Selected Date:',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
