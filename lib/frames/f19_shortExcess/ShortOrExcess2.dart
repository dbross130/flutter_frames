import 'package:flutter/material.dart';

class ShortOrExcess2 extends StatelessWidget {
  const ShortOrExcess2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "SHORT OR EXCESS",
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomizableTable(
                  headers: const [
                    'SR NO',
                    ' CA  NAME',
                    'DESIGNATION',
                    'DECEMBER\n(Short/Excess)',
                  ],
                  itemCount: 31,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue.shade900),
                        child: const Center(
                          child: Text(
                            'EDIT',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.green.shade900),
                        child: const Center(
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
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
            1: FixedColumnWidth(200.0),
            2: FixedColumnWidth(200.0),
            3: FixedColumnWidth(1000.0),
          },
          children: [
            // Main header row with subheadings
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
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
                      padding: const EdgeInsets.all(10.0),
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
                      padding: const EdgeInsets.all(10.0),
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
                        padding: const EdgeInsets.all(10.0),
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
                                '17',
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
                                '18',
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
                                '19',
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
                                '20',
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
                                '21',
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
                                '22',
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
                                '23',
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
                                '24',
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
                                '25',
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
                                '26',
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
                                '27',
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
                                '28',
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
                                '29',
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
                                '30',
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
                                '31',
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
                ' $index',
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
                        Container(
                          width: 1.0,
                          height: 50.0,
                          color: Colors.black,
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
