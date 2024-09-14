import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f33_pf_esi/pf_esi_searchpage.dart';
import 'package:intl/intl.dart';

class PfEsi extends StatelessWidget {
  const PfEsi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PF OR ESI',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red.shade700),
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
                    padding:
                        const EdgeInsets.only(right: 1300, top: 30, bottom: 10),
                    child: Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue.shade900)),
                      child: Center(
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
                    padding:
                        const EdgeInsets.only(left: 150, top: 30, bottom: 10),
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
                                    PfEsiSearchpage(selectedDate: picked),
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
              CustomizableTable(
                headers: const [
                  'EMPLOYEE NAME',
                  'PF',
                  'ESI',
                ],
                itemCount: 31,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1200, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      'GRAND TOTAL:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 350,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue.shade200)),
                    )
                  ],
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

  CustomizableTable({required this.headers, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 50, right: 40, top: 10, bottom: 10),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FixedColumnWidth(150.0),
            1: FixedColumnWidth(750.0),
            2: FixedColumnWidth(750.0),
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
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
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
                              headers[1],
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                'PF NO',
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
                                'PRINCIPAL AMOUNT',
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
                                "EMPLOYER'S CONTRIBUTION",
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
                                "EMPLOYER'S CONTRIBUTION",
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
                                'TOTAL PF',
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
                              headers[2],
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                'ESI NO',
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
                                'PRINCIPAL AMOUNT',
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
                                "EMPLOYER'S CONTRIBUTION",
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
                                "EMPLOYER'S CONTRIBUTION",
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
                                'TOTAL PF',
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
                '',
                '', // Placeholder for additional data
                '', // Placeholder for additional data

                '', // Placeholder for additional data
                '',
              ];
              return TableRow(
                children: [
                  TableCell(
                      child: Center(
                          child: rowData[0] = const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ))),
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
                          height: 50.0,
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
                          height: 50.0,
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
                          height: 50.0,
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
                          height: 50.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                              child: rowData[1] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
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
                              child: rowData[2] = const TextField(
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
                              child: rowData[2] = const TextField(
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
                              child: rowData[2] = const TextField(
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
                              child: rowData[2] = const TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
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
      ),
    );
  }
}
