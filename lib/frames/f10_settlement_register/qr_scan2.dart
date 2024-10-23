import 'package:flutter/material.dart';

class QrScan2 extends StatelessWidget {
  const QrScan2({super.key});

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
                const DataColumn(label: SizedBox(width: 80.0, child: Text(''))),
                const DataColumn(label: SizedBox(width: 80.0, child: Text(''))),
                DataColumn(
                  label: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildTimeTextWithDivider('00:00'),
                      Container(
                        width: 4,
                        color: Colors.black,
                      ),
                      const Expanded(
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
                      const Row(
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
                      const Row(
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
                const DataRow(
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
                    const DataCell(Text('GPAY',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    const DataCell(Text('')),
                    const DataCell(Text('')),
                    const DataCell(Text('')),
                  ],
                ),
                const DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('PAYTM',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                const DataRow(
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
                    const DataCell(Text('QR PROVIDER 2',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    const DataCell(Text('')),
                    const DataCell(Text('')),
                    const DataCell(Text('')),
                  ],
                ),
                const DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('QR PROVIDER 3',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                const DataRow(
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
                    const DataCell(Text('')),
                    const DataCell(Text('')),
                    const DataCell(Text('')),
                    const DataCell(Text('')),
                  ],
                ),
                const DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                const DataRow(
                  cells: [
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                  ],
                ),
                const DataRow(
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
        const SizedBox(height: 8), // Adjust the height between text and divider
        const Divider(
          color: Colors.black,
          height: 20, // Adjust the height of the divider as needed
        ),
      ],
    );
  }
}
