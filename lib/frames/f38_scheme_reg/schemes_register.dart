import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f38_scheme_reg/scheme_page.dart';

class SchemesRegister extends StatelessWidget {
  const SchemesRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SCHEME REGISTER',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red.shade700),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const SchemePage();
                    },
                  ));
                },
                child: Container(
                  height: 30,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.shade200),
                  child: const Center(
                      child: Text(
                    'SCHEMES',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ),
          Container(
            height: 30,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue.shade200),
            child: const Center(
                child: Text(
              'DISCOUNTS',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue.shade200),
            child: const Center(
                child: Text(
              'GIFTS',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue.shade200),
            child: const Center(
                child: Text(
              'ADDITION MANPOWER',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    );
  }
}
