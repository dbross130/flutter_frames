// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/searchpage.dart';

class CustomerName extends StatelessWidget {
  const CustomerName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CREDIT CUSTOMERS',
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
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 10),
                child: Center(
                  child: Container(
                    height: 30,
                    width: 220,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue.shade500,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        'CUSTOMER NAME',
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.green.shade200,
                  border: Border.all(color: Colors.green.shade500),
                ),
                child: Center(
                  child: Text(
                    'SHOW PER DAY PPC BOOK',
                    style: TextStyle(
                      color: Colors.green.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 1300),
              //   child: Icon(
              //     Icons.search,
              //     color: Colors.blue.shade900,
              //     size: 28,
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
                        builder: (context) => searchpage(selectedDate: picked),
                      ),
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 1300),
                  child: Icon(Icons.search),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 20, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 10, bottom: 10, right: 800),
                        child: Row(
                          children: [
                            const Text(
                              'Name:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              width: 260,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.blue.shade900,
                              )),
                              child: const TextField(),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40, bottom: 10, right: 865),
                        child: Row(
                          children: [
                            const Text(
                              'Contact no:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              width: 260,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.blue.shade900,
                              )),
                              child: const TextField(),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 23, bottom: 10, right: 855),
                        child: Row(
                          children: [
                            const Text(
                              'Discount/liter:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.blue.shade900,
                              )),
                              child: const TextField(),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Join date:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.blue.shade900,
                              )),
                              child: const TextField(),
                            ),
                          ],
                        ),
                      ),
                      const CustomizableTable(
                        headers: [
                          'DATE',
                          'OPENING AMOUNT \n        PENDING',
                          'PAYMENT',
                          'SALE',
                          'RECEIPT',
                          'CLOSING AMOUNT\nPENDING'
                        ],
                        itemCount: 31,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1100),
                        child: Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'UPLOAD-BILL',
                                  style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 300, bottom: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green[700]),
                              child: const Center(
                                child: Text(
                                  'SAVE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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

class CustomizableTable extends StatelessWidget {
  final List<String> headers;
  final int itemCount;

  // ignore: use_key_in_widget_constructors
  const CustomizableTable({required this.headers, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 10),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FixedColumnWidth(80.0),
            1: FixedColumnWidth(150.0),
            2: FixedColumnWidth(150.0),
            3: FixedColumnWidth(600.0),
            4: FixedColumnWidth(200.0),
            5: FixedColumnWidth(200.0),
          },
          children: [
            // Main header row with subheadings
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
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
                                'QUANTITY',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 50.0,
                            color: Colors.black,
                          ),
                          Expanded(
                              child: DropdownButton(
                            isExpanded: true,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.blue.shade900,
                              size: 30,
                            ),
                            iconSize: 30,
                            hint: Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Text(
                                'RATE',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            items: const [
                              DropdownMenuItem(
                                alignment: AlignmentDirectional.topCenter,
                                value: 'Item 1',
                                child: Text('Item 1'),
                              ),
                              DropdownMenuItem(
                                alignment: AlignmentDirectional.topCenter,
                                value: 'Item 2',
                                child: Text('Item 2'),
                              ),
                              DropdownMenuItem(
                                alignment: AlignmentDirectional.topCenter,
                                value: 'Item 3',
                                child: Text('Item 3'),
                              ),
                            ],
                            onChanged: (value) {},
                          )),
                          Container(
                            width: 1.0,
                            height: 50.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'AMOUNT',
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
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        headers[4],
                        style: TextStyle(
                            color: Colors.blue[900],
                            decorationColor: Colors.blue[900],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        headers[5],
                        style: TextStyle(
                            color: Colors.red.shade900,
                            decorationColor: Colors.red.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Data rows
            ...List<TableRow>.generate(itemCount, (index) {
              // Generate dummy data for demonstration
              List<dynamic> rowData = [
                ' ${index + 1}',
                '',
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
                          child: rowData[1] = const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ))),
                  TableCell(
                      child: Center(
                          child: rowData[2] = const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
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
                          height: 50.0,
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
                          height: 50.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[3] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                      ],
                    ),
                  ),
                  TableCell(
                      child: Center(
                          child: rowData[4] = const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ))),
                  TableCell(
                      child: Center(
                          child: rowData[5] = const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ))),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
