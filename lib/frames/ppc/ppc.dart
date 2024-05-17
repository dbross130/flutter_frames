import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PPC extends StatelessWidget {
  const PPC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PPC BOOK'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 30,
                  width: 220,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue.shade500,
                      ),
                      borderRadius: BorderRadius.circular(10)),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 25,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade900)),
                    child: Center(
                      child: Text(
                        DateFormat('MM-yyyy').format(DateTime.now()),
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.blue.shade900,
                    size: 28,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 70, bottom: 10),
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
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: const TextField(),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, bottom: 10),
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
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: const TextField(),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23, bottom: 20),
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
                                border:
                                    Border.all(color: Colors.blue.shade900)),
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
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: const TextField(),
                          ),
                        ],
                      ),
                    ),
                    Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow(children: [
                          const TableCell(
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: Text('DATE'),
                            ),
                          ),
                          const TableCell(
                            child: Padding(
                              padding: EdgeInsets.only(left: 30, top: 10),
                              child: Text('OPENING BALANCE'),
                            ),
                          ),
                          const TableCell(
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: Text('PAYMENT'),
                            ),
                          ),
                          TableCell(
                              child: Column(
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 50, top: 10),
                                  child: Text('SALE'),
                                ),
                              ),
                              Table(
                                border: TableBorder.all(),
                                children: [
                                  TableRow(children: [
                                    TableCell(
                                        child: Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text(
                                        'QUANTITY',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.blue.shade900,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                    TableCell(
                                        child: DropdownButton(
                                      hint: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text(
                                          'RATE',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.blue.shade900,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      items: [],
                                      onChanged: (value) {},
                                    )),
                                    TableCell(
                                        child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 8),
                                      child: Text(
                                        'AMOUNT',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.blue.shade900,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ))
                                  ]),
                                ],
                              )
                            ],
                          )),
                          TableCell(child: Text('CLOSING BALANCE'))
                        ]),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
