import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f7_ppc/ppc.dart';

class PPCBOOK extends StatelessWidget {
  const PPCBOOK({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PPC book',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue.shade500)),
                  height: 40,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextField(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900),
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          border: InputBorder.none),
                    ),
                  )),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
              itemCount: 5,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PPC(),
                      )),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(border: Border.all()),
                    child: Center(
                        child: Text(
                      'CUSTOMER ${index + 1}',
                      style:
                          TextStyle(fontSize: 12, color: Colors.blue.shade900),
                    )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
