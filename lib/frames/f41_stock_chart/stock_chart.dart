import 'package:flutter/material.dart';

class StockChart extends StatelessWidget {
  const StockChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'STOCK CHART',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red.shade700),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Center(
              child: Container(
                height: 30,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green.shade700),
                ),
                child: Center(
                  child: Text(
                    '20 May 2024',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown.shade400,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 35,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 2),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        'PETROLEUM PRODUCT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade800),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 35,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.blueGrey.shade200, width: 2),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      'NON-PETROLEUM PRODUCTS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade800),
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade900)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              border: Border.all(
                                color: Colors.green.shade800,
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              'PETROLEUM',
                              style: TextStyle(
                                  color: Colors.green.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            'CNG',
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
