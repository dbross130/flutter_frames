// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DSRScreen(),
  ));
}

class DSRScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DSR'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Product Name:',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButton<String>(
                hint: Text('Select Product'),
                value: null, // Initially no product selected
                onChanged: (newValue) {
                  // Handle dropdown value change
                },
                items: <String>['Product A', 'Product B', 'Product C']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015, 8),
                    lastDate: DateTime(2101),
                    initialEntryMode: DatePickerEntryMode.input,
                  );
                  if (picked != null) {
                    // Handle selected date
                  }
                },
                child: Text(
                  'Month & Year:',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DataTable(
                      border: TableBorder.all(),
                      columns: [
                        DataColumn(label: Text('Date')),
                        DataColumn(label: Text('Tank 1')),
                        DataColumn(label: Text('Tank 2')),
                        DataColumn(label: Text('Tank 3')),
                        DataColumn(label: Text('Opening Stock')),
                        DataColumn(label: Text('Receipt')),
                        DataColumn(label: Text('Total Stock')),
                        DataColumn(label: Text('Opening Meter Reading')),
                        DataColumn(label: Text('Test')),
                        DataColumn(label: Text('Meter Sale')),
                        DataColumn(label: Text('Dip Sale')),
                        DataColumn(label: Text('Stock (Gain/Loss)')),
                        DataColumn(label: Text('Cumulative Sale')),
                        DataColumn(label: Text('Total Engine & Gear Oil Sale')),
                        DataColumn(label: Text('Remarks')),
                      ],
                      rows: List.generate(31, (index) {
                        return DataRow(cells: [
                          DataCell(Text('${index + 1}')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                          DataCell(Text('')),
                        ]);
                      }),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Edit button click
                  },
                  child: Text('Edit'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle Submit button click
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//  Container(
//                         decoration: BoxDecoration(
//                           border: Border.all(),
//                         ),
//                         child: DataTable(
//                           columns: [
//                             DataColumn(label: Text('ID')),
//                             DataColumn(label: Text('Name')),
//                             DataColumn(label: Text('Age')),
//                           ],
//                           rows: [
//                             DataRow(cells: [
//                               DataCell(Text('1')),
//                               DataCell(Text('John')),
//                               DataCell(Text('30')),
//                             ]),
//                             DataRow(cells: [
//                               DataCell(Text('2')),
//                               DataCell(Text('Doe')),
//                               DataCell(Text('25')),
//                             ]),
//                             // Add more DataRow as needed
//                           ],
//                         ),
//                       ),