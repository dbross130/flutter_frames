import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f24_Daybook/daybook_searchPage.dart';
import 'package:intl/intl.dart';

class DayBook extends StatelessWidget {
  const DayBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'DAY BOOK',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1100),
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Center(
                        child: Text(
                          DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
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
                                  DaybookSearchpage(selectedDate: picked),
                            ),
                          );
                        }
                      },
                      child: Icon(
                        Icons.search,
                        color: Colors.blue.shade900,
                      )),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 60, top: 20, right: 40, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: DataTable(
                        headingRowHeight: 80,
                        headingTextStyle: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        border: TableBorder.all(),
                        columns: const [
                          DataColumn(label: Text('SR\nNO')),
                          DataColumn(label: Text('CA NAME')),
                          DataColumn(label: Text('CASH')),
                          DataColumn(label: Text('COIN')),
                          DataColumn(label: Text('CARD')),
                          DataColumn(label: Text('SCAN')),
                          DataColumn(label: Text('CCMS')),
                          DataColumn(label: Text('PPC')),
                          DataColumn(label: Text('CREDIT')),
                          DataColumn(label: Text('MLA COUPON')),
                          DataColumn(label: Text('EXTRA\nREWARD')),
                          DataColumn(label: Text('SHORT/EXCESS')),
                        ],
                        rows: const [
                          DataRow(cells: [
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                            DataCell(TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )),
                          ]),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 800, bottom: 20),
                        child: Container(
                          height: 40,
                          width: 500,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.blue.shade900, width: 2)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'TOTAL AMOUNT :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
