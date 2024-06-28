import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: DSRScreen(),
  ));
}

class DSRScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Text(
          'DSR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  // Center the dropdown menu
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 159, 208, 248),
                    ),
                    child: DropdownButton(
                      iconEnabledColor: Colors.white,
                      items: const [
                        DropdownMenuItem(
                          value: 'Product 1',
                          child: Text('Product 1'),
                        ),
                        DropdownMenuItem(
                          value: 'Product 2',
                          child: Text('Product 2'),
                        ),
                        DropdownMenuItem(
                          value: 'Product 3',
                          child: Text('Product 3'),
                        ),
                        // Add more DropdownMenuItems as needed
                      ],
                      onChanged: (value) {
                        // Handle dropdown value change
                      },
                      hint: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Center(
                          child: Text(
                            'Product name',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                backgroundColor: Colors.lightGreen[900]),
                          ),
                        ),
                      ),
                      isExpanded: true,
                      underline: Container(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
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
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromARGB(255, 7, 75, 134),
                                  width: 2)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'MONTH & YEAR',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 163, 14, 3),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DataTable(
                        headingRowHeight: 80,
                        border: TableBorder.all(width: 3),
                        columns: const [
                          DataColumn(
                            label: Text(
                              'DATE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'TANK 1',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 7, 75, 134),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text('Dip',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('Water dip',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'TANK 2',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 7, 75, 134),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text('Dip',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('Water dip',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'TANK 3',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 7, 75, 134),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text('Dip',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('Water dip',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'OPENING STOCK',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'RECEIPT',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'TOTAL STOCK',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Column(
                              children: [
                                Text(
                                  'OPENING METER READING',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 7, 75, 134),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text('Machine 1',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 128, 59, 54),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('Machine 2',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 128, 59, 54),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('Machine 3',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 128, 59, 54),
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('N.ID',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('N.ID',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('N.ID',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('N.ID',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('N.ID',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('N.ID',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'TEST',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'METER SALE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'DIP SALE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'STOCK (GAIN/LOSS)',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'CUMULATIVE SALE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          DataColumn(
                            label: Column(
                              children: [
                                Text(
                                  'TOTAL ENGINE & GEAR OIL SALE',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 7, 75, 134),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text('Packed',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(),
                                    Text('Loose',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 7, 75, 134),
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'REMARKS',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 180, 34, 24),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                        rows: List.generate(31, (index) {
                          return DataRow(cells: [
                            DataCell(Text('${index + 1}')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                          ]);
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: const Center(
                              child: Text(
                            "Edit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 3, 69, 122),
                              borderRadius: BorderRadius.circular(5)),
                          height: 30,
                          width: 130,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        child: const Center(
                            child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 90, 158, 92),
                            borderRadius: BorderRadius.circular(5)),
                        height: 30,
                        width: 130,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
