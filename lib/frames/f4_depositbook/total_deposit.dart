import 'package:flutter/material.dart';

class TotalDeposit extends StatelessWidget {
  const TotalDeposit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TOTAL DEPOSIT',
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 30, bottom: 30),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: DataTable(
                        columnSpacing: 200,
                        headingTextStyle: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        border: TableBorder.all(),
                        columns: const [
                          DataColumn(label: Text('CASH')),
                          DataColumn(label: Text('COIN')),
                          DataColumn(label: Text('CARD')),
                          DataColumn(label: Text('SCAN')),
                          DataColumn(label: Text('PPC')),
                          DataColumn(label: Text('CREDIT')),
                          DataColumn(label: Text('CCMS')),
                          DataColumn(label: Text('MLA COUPON')),
                          DataColumn(label: Text('EXTRA REWARD')),
                        ],
                        rows: [
                          const DataRow(cells: [
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          DataRow(cells: [
                            DataCell(Container()),
                            DataCell(Container()),
                            DataCell(Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blue.shade900, width: 2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                ),
                              ),
                            )),
                            DataCell(Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blue.shade900, width: 2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                ),
                              ),
                            )),
                            DataCell(Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blue.shade900, width: 2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: 'NO OF PPC',
                                      hintStyle: TextStyle(fontSize: 12)),
                                ),
                              ),
                            )),
                            DataCell(Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blue.shade900, width: 2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: 'NO OF CREDIT',
                                      hintStyle: TextStyle(fontSize: 12)),
                                ),
                              ),
                            )),
                            DataCell(Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blue.shade900, width: 2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: 'NO OF CCMS',
                                      hintStyle: TextStyle(fontSize: 12)),
                                ),
                              ),
                            )),
                            DataCell(Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blue.shade900, width: 2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: 'NO OF REWARD',
                                      hintStyle: TextStyle(fontSize: 12)),
                                ),
                              ),
                            )),
                            DataCell(Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blue.shade900, width: 2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              child: const Padding(
                                padding:
                                    EdgeInsets.only(left: 10, top: 10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: 'NO OF REWARD',
                                      hintStyle: TextStyle(fontSize: 12)),
                                ),
                              ),
                            )),
                          ]),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2608),
                      child: Container(
                        height: 30,
                        width: 163,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: const Center(
                          child: Text(
                            'TOTAL',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Table(
                        border: TableBorder.all(),
                        columnWidths: const {
                          0: FlexColumnWidth(100),
                          1: FlexColumnWidth(10),
                          2: FlexColumnWidth(10),
                          3: FlexColumnWidth(10),
                          4: FlexColumnWidth(10),
                          5: FlexColumnWidth(10),
                          6: FlexColumnWidth(10),
                          7: FlexColumnWidth(10),
                          8: FlexColumnWidth(10),
                        },
                        children: [
                          TableRow(
                            children: List.generate(
                              9,
                              (index) => const TableCell(
                                child: SizedBox(
                                  height: 40,
                                  child: Center(
                                    child: TextField(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 456, bottom: 8),
                      child: Row(
                        children: [
                          const Text(
                            "TOTAL SUM VALUE: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color:
                                        const Color.fromARGB(255, 7, 75, 134))),
                            width: 130,
                            height: 30,
                            child: const Padding(
                              padding:
                                  EdgeInsets.only(left: 10, bottom: 5),
                              child: TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
