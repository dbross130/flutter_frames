import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f35_purchase_register/purchase_volume_page.dart';



class PurchaseCategoryPage extends StatelessWidget {
  const PurchaseCategoryPage({super.key});

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
                    builder: (context) => const PurchaseVolumepage(),
                  )),
              child: Container(
                width: 150,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.blue.shade200,
                ),
                child: const Center(
                  child: Text(
                    'CATEGORY',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PurchaseVolumepage(),
                  )),
              child: Container(
                width: 150,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.blue.shade200,
                ),
                child: const Center(
                  child: Text(
                    'CATEGORY',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


