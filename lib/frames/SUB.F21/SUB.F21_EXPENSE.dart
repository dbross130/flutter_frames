import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Subf21Expense extends StatelessWidget {
  const Subf21Expense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SUB.F21 – EXPENSE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red.shade700,
          ),
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
                      right: 900,
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         InvoicesearchPage(selectedDate: picked),
                            //   ),
                            // );
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
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: _CustomizableTable(
                  headers: [
                    'DATE',
                    'CASH EXPENSES',
                    'SALARY ADVANCE',
                    'SALARY(STAFF)',
                    'ONLINE EXPENSES',
                    'TOTAL EXPENSE PER DAY',
                  ],
                  itemCount: 31,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
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
          0: FixedColumnWidth(150.0),
          1: FixedColumnWidth(250.0),
          2: FixedColumnWidth(250.0),
          3: FixedColumnWidth(250.0),
          4: FixedColumnWidth(250.0),
          5: FixedColumnWidth(300.0),
        },
        children: [
          // Main header row with subheadings
          TableRow(
            children: [
              TableCell(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80.0),
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
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
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
                    padding: const EdgeInsets.only(top: 80),
                    child: Text(
                      headers[5],
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
              '',
              '',
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
    );
  }
}
