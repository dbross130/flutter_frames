import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f35_purchase_register/purchase_main_page.dart';

class PurchaseVolumepage extends StatelessWidget {
  const PurchaseVolumepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PurchaseMainPage(),
                  )),
              child: Container(
                width: 150,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade400,
                ),
                child: const Center(
                  child: Text(
                    'VOLUME',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
