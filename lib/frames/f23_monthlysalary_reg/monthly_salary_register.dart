import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f23_monthlysalary_reg/monthly_search_page.dart';
import 'package:intl/intl.dart';

class MonthlySalaryRegister extends StatelessWidget {
  const MonthlySalaryRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MONTHLY SALARY REGISTER',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1000, top: 30),
                    child: Container(
                      height: 20,
                      width: 130,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue.shade900)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade900),
                        ),
                      ),
                    ),
                  ),
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
                                  MonthlySearchPage(selectedDate: picked),
                            ),
                          );
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 200, top: 30),
                        child: Icon(
                          Icons.search,
                          color: Colors.blue.shade900,
                          size: 30,
                        ),
                      )),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 50, bottom: 20, right: 50, top: 10),
                    child: _CustomizableTable(
                      headers: [
                        'DATE',
                        'LUBE',
                        'B.W',
                        'LPG',
                      ],
                      itemCount: 31,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 70, left: 20, right: 20, bottom: 30),
                    child: _CustomizableTable2(
                      headers: ['HSD', 'MS', 'XP95'],
                      itemCount: 31,
                    ),
                  )
                ],
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
    return Table(
      border: TableBorder.all(),
      columnWidths: const {
        0: FixedColumnWidth(40.0),
        1: FixedColumnWidth(150.0),
        2: FixedColumnWidth(150.0),
        3: FixedColumnWidth(150.0),
      },
      children: [
        // Main header row with subheadings
        TableRow(
          children: [
            TableCell(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60, left: 5),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: RichText(
                          text: TextSpan(
                        text: headers[0],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ),
            TableCell(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90.0, bottom: 15),
                  child: Text(
                    headers[1],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            TableCell(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90.0, bottom: 15),
                  child: Text(
                    headers[2],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            TableCell(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90, bottom: 15),
                  child: Text(
                    headers[3],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Data rows
        ...List<TableRow>.generate(itemCount, (index) {
          List<dynamic> rowData = [
            ' $index',
            '',
            '',
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
            ],
          );
        }),
      ],
    );
  }
}

class _CustomizableTable2 extends StatelessWidget {
  final List<String> headers;
  final int itemCount;

  const _CustomizableTable2({required this.headers, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Table(
        border: TableBorder.all(),
        columnWidths: const {
          0: FixedColumnWidth(300.0),
          1: FixedColumnWidth(300.0),
          2: FixedColumnWidth(300.0),
        },
        children: [
          TableRow(
            children: [
              TableCell(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
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
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              'SALE',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 1.0,
                          height: 55.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'RATE',
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
                      padding: const EdgeInsets.all(15.0),
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
                              'SALE',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 1.0,
                          height: 55.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'RATE',
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
                      padding: const EdgeInsets.all(15.0),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
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
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              'SALE',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 1.0,
                          height: 55.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'RATE',
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
              '',
              '',
              '',
            ];
            return TableRow(
              children: [
                TableCell(
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                            child: rowData[0] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      Container(
                        width: 1.0,
                        height: 50.0,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: Center(
                            child: rowData[0] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                    ],
                  ),
                ),
                TableCell(
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                            child: rowData[1] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      Container(
                        width: 1.0,
                        height: 50.0,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: Center(
                            child: rowData[1] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                    ],
                  ),
                ),
                TableCell(
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                            child: rowData[2] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      Container(
                        width: 1.0,
                        height: 50.0,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: Center(
                            child: rowData[2] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
