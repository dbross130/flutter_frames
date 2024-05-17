// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('INVOICE REGISTER'),
        ),
        body: TableWidget(),
      ),
    );
  }
}

class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 25,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade900)),
                child: Center(
                    child: Text(
                  'MONTH & YEAR',
                  style: TextStyle(color: Colors.blue.shade900, fontSize: 12),
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Padding(
                            padding:
                                EdgeInsets.only(bottom: 20, top: 20, left: 40),
                            child: Text(
                              'DATE',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding:
                                EdgeInsets.only(bottom: 20, top: 20, left: 40),
                            child: Text(
                              'Load no:',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding:
                                EdgeInsets.only(bottom: 20, top: 20, left: 40),
                            child: Text(
                              'Invoice no:',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding:
                                EdgeInsets.only(bottom: 20, top: 20, left: 40),
                            child: Center(
                                child: Text(
                              ' Invoice Amount',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        TableCell(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: 20, top: 20, left: 10, right: 10),
                                child: Text(
                                  'Invoice Details',
                                  style: TextStyle(
                                      color: Colors.blue.shade900,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Table(
                                columnWidths: {
                                  0: FractionColumnWidth(1),
                                  1: FractionColumnWidth(1),
                                  3: FractionColumnWidth(1),
                                },
                                border: TableBorder.all(),
                                children: [
                                  TableRow(
                                    children: [
                                      TableCell(
                                          child: Column(
                                        children: [
                                          Center(
                                              child: Text(
                                            'product 1',
                                            style: TextStyle(
                                                color: Colors.blue.shade900,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          Table(
                                            border: TableBorder.all(),
                                            children: [
                                              TableRow(children: [
                                                TableCell(
                                                  child: Center(
                                                      child: Text(
                                                    'VOLUME',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .blue.shade900,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                                ),
                                                Center(
                                                    child: Text(
                                                  'DENSITY',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ]),
                                            ],
                                          )
                                        ],
                                      )),
                                      TableCell(
                                          child: Column(
                                        children: [
                                          Center(
                                              child: Text(
                                            'Product 2',
                                            style: TextStyle(
                                                color: Colors.blue.shade900,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          Table(
                                            border: TableBorder.all(),
                                            children: [
                                              TableRow(children: [
                                                TableCell(
                                                    child: Text(
                                                  'VOLUME',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                Center(
                                                    child: Text(
                                                  'DENSITY',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))
                                              ])
                                            ],
                                          )
                                        ],
                                      )),
                                      TableCell(
                                          child: Column(
                                        children: [
                                          Center(
                                              child: Text(
                                            'Product 3',
                                            style: TextStyle(
                                                color: Colors.blue.shade900,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          Table(
                                            border: TableBorder.all(),
                                            children: [
                                              TableRow(children: [
                                                TableCell(
                                                    child: Text(
                                                  'VOLUME',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                Center(
                                                    child: Text(
                                                  'DENSITY',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))
                                              ])
                                            ],
                                          )
                                        ],
                                      )),
                                      TableCell(
                                          child: Column(
                                        children: [
                                          Center(
                                              child: Text(
                                            'Product 2',
                                            style: TextStyle(
                                                color: Colors.blue.shade900,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          Table(
                                            border: TableBorder.all(),
                                            children: [
                                              TableRow(children: [
                                                TableCell(
                                                    child: Text(
                                                  'VOLUME',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                Center(
                                                    child: Text(
                                                  'DENSITY',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))
                                              ])
                                            ],
                                          )
                                        ],
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('')),
                        ),
                        TableCell(
                          child: Center(child: Text('')),
                        ),
                        TableCell(
                          child: Center(child: Text('')),
                        ),
                        TableCell(
                          child: Center(child: Text('')),
                        ),
                        TableCell(
                          child: Center(child: Text('')),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Row 2, Cell 1')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 2, Cell 2')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 2, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 2, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 2, Cell 3A')),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Row 3, Cell 1')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 3, Cell 2')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 3, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 3, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 3, Cell 3A')),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Row 4, Cell 1')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 4, Cell 2')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 4, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 4, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 4, Cell 3A')),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 1')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 2')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 3A')),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 1')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 2')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 3A')),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 1')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 2')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 3A')),
                        ),
                        TableCell(
                          child: Center(child: Text('Row 5, Cell 3A')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
