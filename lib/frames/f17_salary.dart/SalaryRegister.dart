import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f17_salary.dart/salarysearchpage.dart';

class SalaryRegister extends StatelessWidget {
  const SalaryRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SALARY REGISTER",
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
                    padding: const EdgeInsets.only(right: 780, top: 30),
                    child: Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue.shade900)),
                      child: const Center(
                        child: Text(
                          'MONTH AND YEAR',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 450, top: 30),
                  //   child: Icon(
                  //     Icons.search,
                  //     size: 32,
                  //     color: Colors.blue.shade900,
                  //   ),
                  // )
                  Padding(
                    padding: const EdgeInsets.only(left: 450, top: 30),
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
                                  SalarySearchPage(selectedDate: picked),
                            ),
                          );
                        }
                      },
                      child: Icon(
                        Icons.search,
                        size: 32,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                ],
              ),
              CustomizableTable(
                headers: const [
                  'SR NO',
                  'NAME',
                  'DESIGNATION',
                  'MONTHLY\nATTENDANCE',
                  'PER DAY\nWAGE',
                  'CURRENT\nMONTH\nSALARY',
                  'DEDECTIONS',
                  'NET SALARY AMOUNT'
                ],
                itemCount: 31,
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
        padding:
            const EdgeInsets.only(left: 40, right: 40, top: 50, bottom: 10),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FixedColumnWidth(50.0),
            1: FixedColumnWidth(100.0),
            2: FixedColumnWidth(150.0),
            3: FixedColumnWidth(150.0),
            4: FixedColumnWidth(60.0),
            5: FixedColumnWidth(100.0),
            6: FixedColumnWidth(600.0),
            7: FixedColumnWidth(200.0),
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
                TableCell(
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
                TableCell(
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
                              headers[6],
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
                                'ADVANCE',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 35.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'SHORT',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 35.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'MECHANICAL\nEXPENSES',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 35.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'EMPLOYEE\nCREDIT',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 35.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'PF&ESI',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 35.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'INSURANCE',
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
                        headers[7],
                        style: TextStyle(
                            color: Colors.blue.shade900,
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
                ' $index',
                '',
                '',
                '',
                '', // Placeholder for additional data
                '', // Placeholder for additional data
                '', // Placeholder for additional data
                '',
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
                      child: Center(
                          child: rowData[3] = const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ))),
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
                  TableCell(
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                              child: rowData[6] = const TextField(
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
                              child: rowData[6] = const TextField(
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
                              child: rowData[6] = const TextField(
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
                              child: rowData[6] = const TextField(
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
                              child: rowData[6] = const TextField(
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
                              child: rowData[6] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ),
                      ],
                    ),
                  ),
                  TableCell(
                      child: Center(
                          child: rowData[7] = const TextField(
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
