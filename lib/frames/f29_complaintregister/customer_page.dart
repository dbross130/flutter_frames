import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CUSTOMER COMPLAINTS',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 680, top: 30),
                    child: Container(
                      height: 25,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Center(
                        child: Text(
                          DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: DataTable(
                      border: TableBorder.all(),
                      columns: const [
                        DataColumn(
                            label: Text(
                          'CUSTOMER NAME',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'CONTACT NUMBER',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'COMPLAINT AGAINST',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'COMPLAINT DESCRIPTION',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'ACTION TAKEN',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ))
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
                        ]),
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
                        ]),
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
                        ]),
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
                        ]),
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
                        ]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.red.shade700,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'DELETE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.green.shade700,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'SUBMIT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
