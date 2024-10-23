import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/searchpage.dart';
import 'package:intl/intl.dart';

class DensityRegister extends StatelessWidget {
  const DensityRegister({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "DENSITY REGISTER",
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 159, 208, 248),
                  ),
                  child: Center(
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
                      ],
                      onChanged: (value) {
                        // Handle dropdown value change
                      },
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Center(
                          child: Text(
                            'Product name',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 7, 75, 134),
                              backgroundColor: Colors.yellow,
                            ),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.blue.shade900,
                        )),
                        child: Center(
                          child: Text(
                            DateFormat('dd-MM-yyyy').format(DateTime.now()),
                            style: TextStyle(
                              color: Colors.red.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 1020),
                      //   child: IconButton(
                      //     icon: Icon(Icons.search,
                      //         color: const Color.fromARGB(255, 7, 75, 134)),
                      //     onPressed: () {
                      //       // Implement search functionality
                      //     },
                      //   ),
                      // ),
                      GestureDetector(
                        onTap: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(3000),
                            initialEntryMode: DatePickerEntryMode.input,
                          );
                          if (picked != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    searchpage(selectedDate: picked),
                              ),
                            );
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 1020),
                          child: Icon(Icons.search),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomizableTable(
                headers: const [
                  'DATE',
                  'MORNING DENSITY',
                  'LOAD\n NO',
                  'TT RECEIPT',
                  'RECEIPT DENSITY',
                  'DENSITY AFTER UNLOADING &\n     DISPENSING 50 LITRE'
                ],
                itemCount: 31,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 120,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Colors.green.shade700,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Text(
                      'SAVE',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomizableTable extends StatelessWidget {
  final List<String> headers;
  final int itemCount;

  CustomizableTable({required this.headers, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 2, bottom: 10),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FixedColumnWidth(80.0),
            1: FixedColumnWidth(200.0),
            2: FixedColumnWidth(80.0),
            3: FixedColumnWidth(250.0),
            4: FixedColumnWidth(300.0),
            5: FixedColumnWidth(308.0),
          },
          children: [
            // Main header row with subheadings
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        headers[0],
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Colors.black),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              headers[1],
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                'DEN/\nNAT',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 65.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'TEMP',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 65.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'DEN 15°C',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          headers[2],
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Colors.black),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              headers[3],
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                'QTY',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 65.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'INVOICE\n NO',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 65.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'INVOICE\n DENSITY',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                TableCell(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Colors.black),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              headers[4],
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                'COMP 1',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 65.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'COMP 2',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 65.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'COMP 3',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 65.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'COMP 4',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                TableCell(
                  child: Column(
                    children: [
                      Container(
                        // padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              headers[5],
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                'DEN/NAT',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 65.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'TEMP',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 65.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'DEN 15°C',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Data rows
            ...List<TableRow>.generate(itemCount, (index) {
              // Generate dummy data for demonstration
              List<dynamic> rowData = [
                ' $index',
                '',
                '',
                '',
                '',
                '', // Placeholder for additional data
              ];
              return TableRow(
                children: [
                  TableCell(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text("${index + 1}"),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: rowData[1] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[1] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[1] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  TableCell(
                      child: Center(
                          child: rowData[2] = const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ))),
                  TableCell(
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: rowData[3] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[3] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[3] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: rowData[4] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[4] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[4] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[4] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: rowData[5] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[5] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[5] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                        Container(
                          width: 1.0,
                          height: 65.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
