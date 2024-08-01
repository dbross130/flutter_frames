import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/Gstpage/b2b.dart';
import 'package:flutter_frames/frames/Gstpage/b2c.dart';

class Gstbillbook extends StatelessWidget {
  const Gstbillbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'GST BILL BOOK',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
              child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                border: Border.all(color: Colors.blue.shade50),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: TextButton(
                onPressed: () {
                  _showSalesType(context);
                },
                child: const Text(
                  'SALES',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }

  void _showSalesType(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.shade100,
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const B2b(),
                              ));
                        },
                        child: const Text(
                          'B2B',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.shade100,
                    ),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const B2c(),
                              ));
                        },
                        child: const Text(
                          'B2C',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )),
                  )
                ],
              ),
            )
            // TextButton(
            //   onPressed: () {
            //     Navigator.of(context).pop(); // Close the dialog
            //   },
            //   child: Text('Cancel'),
            // ),
            // TextButton(
            //   onPressed: () {
            //     // Add your leave request logic here
            //     Navigator.of(context).pop(); // Close the dialog
            //   },
            //   child: Text('Request Leave'),
            // ),
          ],
        );
      },
    );
  }
}
