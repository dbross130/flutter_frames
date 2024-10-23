import 'package:flutter/material.dart';

class Loan extends StatelessWidget {
  const Loan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'LOAN PAYMENT',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red.shade700,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 1150, bottom: 50, top: 10),
                          child: Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(border: Border.all()),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'LOAN NO',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade900,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50),
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.blue.shade900,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.blue.shade900,
                      )
                    ]
                    
                    ,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'LOAN DATE:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(230, 153, 43, 3)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 550,
                          decoration: BoxDecoration(border: Border.all()),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          'LOAN AMOUNT:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(230, 153, 43, 3)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 550,
                          decoration: BoxDecoration(border: Border.all()),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'LOAN FROM:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(230, 153, 43, 3)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 550,
                          decoration: BoxDecoration(border: Border.all()),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'INTEREST RATE %:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(230, 153, 43, 3)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 550,
                          decoration: BoxDecoration(border: Border.all()),
                        )
                      ],
                    ),
                  ),
                  const CustomizableTable(
                    headers: [
                      'DATE',
                      'DUE DATE',
                      'PAYMENT',
                      'INTEREST',
                      'PRINCIPAL',
                      'BALANCE AMOUNT',
                      'PAYMENT BILL',
                    ],
                    itemCount: 32,
                  ),
                ],
              ),
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

  const CustomizableTable(
      {super.key, required this.headers, required this.itemCount});

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
            0: FixedColumnWidth(100.0),
            1: FixedColumnWidth(200.0),
            2: FixedColumnWidth(200.0),
            3: FixedColumnWidth(300.0),
            4: FixedColumnWidth(150.0),
            5: FixedColumnWidth(200.0),
            6: FixedColumnWidth(200.0),
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
                TableCell(
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
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        headers[3],
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
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
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
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
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        headers[6],
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
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
                      child: Center(
                          child: rowData[6] = const TextField(
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

