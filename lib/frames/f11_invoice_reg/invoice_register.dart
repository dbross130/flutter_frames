import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f11_invoice_reg/invoice_register2.dart';
import 'package:flutter_frames/frames/f11_invoice_reg/invoicesearchpage.dart';
import 'package:intl/intl.dart';

class InvoiceRegister extends StatelessWidget {
  const InvoiceRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'INVOICE REGISTER',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 850,
                      top: 30,
                      left: 50,
                      bottom: 10,
                    ),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue.shade900)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: 300,
                  //     top: 30,
                  //     bottom: 10,
                  //     right: 50,
                  //   ),
                  //   child: Icon(
                  //     Icons.search,
                  //     size: 32,
                  //     color: Colors.blue.shade900,
                  //   ),
                  // )
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 300, top: 30, bottom: 10, right: 50),
                    child: GestureDetector(
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
                                    InvoicesearchPage(selectedDate: picked),
                              ),
                            );
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.search,
                            color: Colors.blue.shade900,
                          ),
                        )),
                  ),
                ],
              ),
              const _CustomizableTable(
                headers: [
                  'DATE',
                  'LOAD NO:',
                  'INVOICE NO:',
                  'INVOICE AMOUNT',
                  'INVOICE DETAILS',
                ],
                itemCount: 31,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 1150, bottom: 20),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(color: Colors.yellow),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text(
                          'UPLOAD INVOICE BILL[IP9]',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 1150, bottom: 20),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InvoiceRegister2())),
                  child: Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.blue.shade900,
                      width: 2,
                    )),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Text(
                        'PRODUCTS DETAILS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomizableTable extends StatelessWidget {
  final List<String> headers;
  final int itemCount;

  const _CustomizableTable({required this.headers, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Table(
        border: TableBorder.all(),
        columnWidths: const {
          0: FixedColumnWidth(60.0),
          1: FixedColumnWidth(100.0),
          2: FixedColumnWidth(180.0),
          3: FixedColumnWidth(150.0),
          4: FixedColumnWidth(900.0),
        },
        children: [
          // Main header row with subheadings
          TableRow(
            children: [
              TableCell(
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: RichText(
                            text: TextSpan(
                                text: headers[0],
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                ))),
                      )),
                ),
              ),
              TableCell(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Text(
                      headers[1],
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Text(
                      headers[2],
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Text(
                      headers[3],
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
                      padding: const EdgeInsets.all(1),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                      height: 60, // Set the height of the header
                      child: Center(
                        child: Text(
                          headers[4], // "OPENING METER READING"
                          style: const TextStyle(
                            color: Color.fromARGB(255, 7, 75, 134),
                            fontWeight: FontWeight.bold,
                            fontSize: 14, // Adjust font size here
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        ...List.generate(
                            4,
                            (index) => Expanded(
                                  child: Column(
                                    children: [
                                      Center(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 80),
                                            child: Text(
                                              'PRODUCT ${index + 1}',
                                              style: TextStyle(
                                                  color: Colors.blue.shade900,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            width: 1.0,
                                            height: 60.0,
                                            color: Colors.black,
                                          ),
                                        ],
                                      )),
                                      Container(
                                        width: 300,
                                        height: 1.0,
                                        color: Colors.black,
                                      ),
                                      Row(
                                        children: [
                                          const Expanded(
                                            child: Center(
                                                child: Text(
                                              'VOLUME',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 7, 76, 134),
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                          Container(
                                            width: 1.0,
                                            height: 70.0,
                                            color: Colors.black,
                                          ),
                                          const Expanded(
                                            child: Center(
                                                child: Text(
                                              'DENSITY',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 7, 75, 134),
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                          Container(
                                            width: 1.0,
                                            height: 70.0,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
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
              '', // Placeholder for additional data
            ];
            return TableRow(
              children: [
                TableCell(child: Center(child: Text(rowData[0].toString()))),
                TableCell(
                    child: Center(
                        child: rowData[1] = const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ))),
                TableCell(
                    child: Center(
                        child: rowData[2] = const TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ))),
                TableCell(
                    child: Center(
                        child: rowData[3] = const TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ))),
                TableCell(
                    child: Row(
                  children: [
                    ...List.generate(
                      4,
                      (i) => Expanded(
                        child: Column(
                          children: [
                            if (index >= 0)
                              Row(
                                children: [
                                  Expanded(
                                    child: Center(
                                        child: rowData[4] = const TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none),
                                    )),
                                  ),
                                  Container(
                                    width: 1.0,
                                    height: 49,
                                    color: Colors.black,
                                  ),
                                  const Expanded(
                                      child: Center(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none),
                                    ),
                                  )),
                                  Container(
                                    width: 1,
                                    height: 49,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 41,
                      color: Colors.black,
                    )
                  ],
                ))
              ],
            );
          }),
        ],
      ),
    );
  }
}
