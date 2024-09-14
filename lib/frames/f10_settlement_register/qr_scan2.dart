import 'package:flutter/material.dart';

class QrScan2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QR SCAN DETAILS ",
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: DataTable(
              headingRowHeight: 80,
              border: TableBorder.all(),
              columnSpacing: 10.0,
              dataRowHeight: 40.0,
              columns: [
                DataColumn(label: SizedBox(width: 80.0, child: Text(''))),
                DataColumn(label: SizedBox(width: 80.0, child: Text(''))),
                DataColumn(
                  label: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTimeTextWithDivider('00:00'),
                      Container(
                        width: 4,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('QR Settlement'),
                            Text('Bank Statement'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                DataColumn(
                  label: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTimeTextWithDivider('12:00'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('QR Settlement'),
                          Text('Bank Statement'),
                        ],
                      ),
                    ],
                  ),
                ),
                DataColumn(
                  label: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTimeTextWithDivider('08:00'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('QR Settlement'),
                          Text('Bank Statement'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('PHONE PE',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('BANK 1',
                        style: TextStyle(
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold))),
                    DataCell(Text('GPAY',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('PAYTM',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('QR PROVIDER 1',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('BANK 2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red[900]))),
                    DataCell(Text('QR PROVIDER 2',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('QR PROVIDER 3',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                // Additional blank rows
                DataRow(
                  cells: [
                    DataCell(Text('BANK 3',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red[900]))),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTimeTextWithDivider(String time) {
    return Column(
      children: [
        Text(time),
        SizedBox(height: 8), // Adjust the height between text and divider
        Divider(
          color: Colors.black,
          height: 20, // Adjust the height of the divider as needed
        ),
      ],
    );
  }
}




// import 'package:flutter/material.dart';

// class QrScan2 extends StatelessWidget {
//   const QrScan2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         backgroundColor: Colors.blue,
//         title: Text(
//           "Qr Scan",
//           style: TextStyle(
//               color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Column(
//             children: [
//               Center(
//                 child: Row(
//                   children: [
//                     CustomizableTable(
//                       headers: const [
//                         // 'SR NO',
//                         // 'EMPLOYEE  ID',
//                         // 'EMPLOYEE NAME',
//                         // 'DESIGNATION',
//                         'DECEMBER\n(Attendance)',
//                       ],
//                       itemCount: 10,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomizableTable extends StatelessWidget {
//   final List<String> headers;
//   final int itemCount;

//   CustomizableTable({required this.headers, required this.itemCount});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding:
//             const EdgeInsets.only(left: 40, right: 40, top: 50, bottom: 10),
//         child: Table(
//           border: TableBorder.all(width: 3),
//           columnWidths: const {
//             // 0: FixedColumnWidth(50.0),
//             // 1: FixedColumnWidth(100.0),
//             // 2: FixedColumnWidth(150.0),
//             0: FixedColumnWidth(150.0),
//             1: FixedColumnWidth(2000.0),
//           },
//           children: [
//             // Main header row with subheadings
//             TableRow(
//               children: [
//                 // TableCell(
//                 //   child: Center(
//                 //     child: Padding(
//                 //       padding: const EdgeInsets.all(10.0),
//                 //       child: Text(
//                 //         headers[0],
//                 //         style: TextStyle(
//                 //             color: Colors.blue.shade900,
//                 //             fontWeight: FontWeight.bold),
//                 //       ),
//                 //     ),
//                 //   ),
//                 // ),
//                 // TableCell(
//                 //   child: Center(
//                 //     child: Padding(
//                 //       padding: const EdgeInsets.all(10.0),
//                 //       child: Text(
//                 //         headers[1],
//                 //         style: TextStyle(
//                 //             color: Colors.blue.shade900,
//                 //             fontWeight: FontWeight.bold),
//                 //       ),
//                 //     ),
//                 //   ),
//                 // ),
//                 // TableCell(
//                 //   child: Center(
//                 //     child: Padding(
//                 //       padding: const EdgeInsets.all(10.0),
//                 //       child: Text(
//                 //         headers[2],
//                 //         style: TextStyle(
//                 //             color: Colors.blue.shade900,
//                 //             fontWeight: FontWeight.bold),
//                 //       ),
//                 //     ),
//                 //   ),
//                 // ),
//                 TableCell(
//                   child: Center(
//                     child: Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Text(
//                         headers[0],
//                         style: TextStyle(
//                             color: Colors.blue.shade900,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ),
//                 TableCell(
//                   child: Column(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(10.0),
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(width: 3.0, color: Colors.black),
//                           ),
//                         ),
//                         child: Row(
//                           children: [
//                             Center(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(left: 960),
//                                 child: Text(
//                                   headers[1],
//                                   style: TextStyle(
//                                       color: Colors.blue.shade900,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 900),
//                                   child: Icon(Icons.search,color: Colors.blue,),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         )
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '1',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '2',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '3',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '4',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '5',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '6',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '7',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '8',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '9',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '10',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '11',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '12',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '13',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '14',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '15',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '16',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '17',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '18',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '19',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '20',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '21',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '22',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '23',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '24',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '25',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '26',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '27',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '28',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '29',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '30',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '31',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(left: 5),
//                                 child: Text(
//                                   'TOTAL DAYS',
//                                   style: TextStyle(
//                                       color: Colors.blue.shade900,
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
            
//             // Data rows
//             ...List<TableRow>.generate(itemCount, (index) {
//               // Generate dummy data for demonstration
//               List<dynamic> rowData = [
//                 // ' $index',
//                 // '',
//                 // '',
//                 '',
//                 '', // Placeholder for additional data
//               ];
//               return TableRow(
//                 children: [
                  
//               // TableCell(
//               //   child: Center(
//               //     child: Padding(
//               //       padding: const EdgeInsets.only(top: 15),
//               //       child: Text("${index + 1}"),
//               //     ),
//               //   ),
//               // ),
//               //     TableCell(
//               //         child: Center(child: rowData[1] = const TextField())),
//               //     TableCell(
//               //         child: Center(child: rowData[2] = const TextField())),
//                   TableCell(
//                       child: Center(child: rowData[0] = const TextField())),
//                   TableCell(
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';



// class QrScan2 extends StatelessWidget {
//   const QrScan2({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         iconTheme: const IconThemeData(color: Colors.white),
//         title: const Text(
//           "Qr scan",
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//               ),
//               CustomizableTable(
//                 headers: const [
//                   'MORNING DENSITY',
//                   'DENSITY AFTER UNLOADING &\n     DISPENSING 50 LITRE'
//                 ],
//                 itemCount: 10,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// class CustomizableTable extends StatelessWidget {
//   final List<String> headers;
//   final int itemCount;

//   CustomizableTable({required this.headers, required this.itemCount});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding:
//             const EdgeInsets.only(left: 40, right: 40, top: 2, bottom: 10),
//         child: Table(
//           border: TableBorder.all(width: 3),
//           columnWidths: const {
           
//             0: FixedColumnWidth(200.0),
           
//             1: FixedColumnWidth(308.0),
//           },
//           children: [
//             // Main header row with subheadings
//             TableRow(
//               children: [
//                 TableCell(
//                   child: Column(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(10.0),
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(width: 3.0, color: Colors.black),
//                           ),
//                         ),
//                         child: Center(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               headers[0],
//                               style: TextStyle(
//                                   color: Colors.blue.shade900,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 63.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 63.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
               
//                 TableCell(
//                   child: Column(
//                     children: [
//                       Container(
//                         // padding: const EdgeInsets.all(10.0),
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(width: 3.0, color: Colors.black,),
//                           ),
//                         ),
//                         child: Center(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               headers[1],
//                               style: TextStyle(
//                                   color: Colors.blue.shade900,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(23),
//                             child: Expanded(
//                               child: Center(
//                                 child: Text(
//                                   'DEN/NAT',
//                                   style: TextStyle(
//                                       color: Colors.blue.shade900,
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 62.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 'TEMP',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 62.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 'DEN 15°C',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             // Data rows
//             ...List<TableRow>.generate(itemCount, (index) {
//               // Generate dummy data for demonstration
//               List<dynamic> rowData = [
//                 '',
//                 '', // Placeholder for additional data
//               ];
//               return TableRow(
//                 children: [
//                   TableCell(
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Center(child: rowData[0] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[0] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[0] = const TextField()),
//                         ),
//                         Container(
//                           width: 1.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                       ],
//                     ),
//                   ),
//                   TableCell(
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';

// class QrScan2 extends StatelessWidget {
//   const QrScan2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.white),
//         backgroundColor: Colors.blue,
//         title: Text(
//           "Qr scan",
//           style: TextStyle(
//               color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Column(
//             children: [
//               Center(
//                 child: Row(
//                   children: [
//                     CustomizableTable(
//                       headers: const [
//                         'EMPLOYEE NAME',
//                         'DESIGNATION',
//                         'DECEMBER\n(Attendance)',
//                       ],
//                       itemCount: 31,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomizableTable extends StatelessWidget {
//   final List<String> headers;
//   final int itemCount;

//   CustomizableTable({required this.headers, required this.itemCount});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(
//         padding:
//             const EdgeInsets.only(left: 40, right: 40, top: 50, bottom: 10),
//         child: Table(
//           border: TableBorder.all(width: 3),
//           columnWidths: const {
           
           
//             0: FixedColumnWidth(150.0),
//             1: FixedColumnWidth(150.0),
//             2: FixedColumnWidth(2000.0),
//           },
//           children: [
//             // Main header row with subheadings
//             TableRow(
//               children: [
                
                
//                TableCell(
//                   child: Column(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(10.0),
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(width: 3.0, color: Colors.black),
//                           ),
//                         ),
//                         child: Row(
//                           children: [
//                             Center(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(left: 960),
//                                 child: Text(
//                                   headers[0],
//                                   style: TextStyle(
//                                       color: Colors.blue.shade900,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 900),
//                                   child: Icon(Icons.search,color: Colors.blue,),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         )
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '1',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '2',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
                         
//                         ],
//                       ),                        //heading 1
//                 TableCell(
//                   child: Column(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(10.0),
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(width: 3.0, color: Colors.black),
//                           ),
//                         ),
//                         child: Row(
//                           children: [
//                             Center(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(left: 960),
//                                 child: Text(
//                                   headers[4],
//                                   style: TextStyle(
//                                       color: Colors.blue.shade900,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 900),
//                                   child: Icon(Icons.search,color: Colors.blue,),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         )
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '1',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '2',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
                         
//                         ],
//                       ),                                    //heading 2
//                 TableCell(
//                   child: Column(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(10.0),
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(width: 3.0, color: Colors.black),
//                           ),
//                         ),
//                         child: Row(
//                           children: [
//                             Center(
//                               child: Padding(
//                                 padding: const EdgeInsets.only(left: 960),
//                                 child: Text(
//                                   headers[4],
//                                   style: TextStyle(
//                                       color: Colors.blue.shade900,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 900),
//                                   child: Icon(Icons.search,color: Colors.blue,),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         )
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '1',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Center(
//                               child: Text(
//                                 '2',
//                                 style: TextStyle(
//                                     color: Colors.blue.shade900,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 3.0,
//                             height: 35.0,
//                             color: Colors.black,
//                           ),
                         
//                         ],
//                       ),                                        //heading 3
//                     ],
//                   ),
//                 ),
//               ],
//                 );
                
//             // Data rows
//             ...List<TableRow>.generate(5, (int index) {
//               // Generate dummy data for demonstration
//               List<dynamic> rowData = [
               
//                 '',
//                 '',
//                 '', // Placeholder for additional data
//               ];
//               return TableRow(
//                 children: [
                  
             
//                  TableCell(
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Center(child: rowData[0] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[0] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
                       
//                       ],
//                     ),
//                   ),
//                    TableCell(
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[1] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
                       
//                       ],
//                     ),
//                   ),
//                   TableCell(
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Center(child: rowData[2] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
//                         Expanded(
//                           child: Center(child: rowData[2] = const TextField()),
//                         ),
//                         Container(
//                           width: 3.0,
//                           height: 50.0,
//                           color: Colors.black,
//                         ),
                       
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             }),
//                 )
//           ],
//         ),
//       ),
//               ]
//             )
//           ]
//         )
//       )
//     );
//   }
// }