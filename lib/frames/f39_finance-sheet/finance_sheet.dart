import 'package:flutter/material.dart';

class FinanceSheet extends StatelessWidget {
  const FinanceSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'FINANCE SHEET',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red.shade700),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Center(child: Text('DD/MM/YY')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 190,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 252, 187, 89),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                      child: Text(
                    'VIEW DETAILED FINANCE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 116, 70, 60)),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
