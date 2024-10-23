import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var txt = [
      'DISPENSARYUNITS',
      'PETROLEUM PRODUCTS',
      'NON-PETROLEUMPRODUCTS',
      'CUSTOMERS',
      'SHIFTS',
      'BANKS',
      'STAFFS',
      'MODES OF SALES RECEIPT',
      'TANKS',
      'LIMITS',
      'CHARTUPLOAD',
      'NOTIFICATION',
      'OIL-COMPANIES',
      'GST-PERCENTAGE',
      'SCHEMES TO IMPROVE SALES',
      'LOAN -DETAILS'
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SETTINGS',
          style: TextStyle(
            color: Colors.red.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Center(
      //         child: Container(
      //           decoration: BoxDecoration(border: Border.all()),
      //           child: Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Container(
      //               height: 30,
      //               width: 300,
      //               decoration: BoxDecoration(
      //                   border: Border.all(),
      //                   borderRadius: BorderRadius.circular(8)),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Text(
      //                     'SEARCH',
      //                     style: TextStyle(fontWeight: FontWeight.bold),
      //                   ),
      //                   Icon(
      //                     Icons.search,
      //                     color: Colors.blue.shade900,
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),

      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: 16, // Number of items in the grid
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Container(
              height: 40,
              decoration: BoxDecoration(border: Border.all()),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    
                  },
                  child: Text(txt[index],
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue.shade900,
                          decorationThickness: 2,
                          letterSpacing: 1)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
