import 'package:flutter/material.dart';

class SettlementMangerView extends StatelessWidget {
  const SettlementMangerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now(); // Get current date

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CCMS MANAGER'S VIEW",
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Container(
                  width: 900,
                  height: 970, // Adjust height as needed
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 7, 75, 134),
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 123, top: 40),
                          child: Row(
                            children: [
                              Container(
                                width: 130,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 7, 75, 134),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "${currentDate.day}/${currentDate.month}/${currentDate.year}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 470),
                                child: Icon(Icons.search,
                                    color: Colors.blue.shade900),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        CustomizableTable(
                          headers: const ['', 'SETTLEMENT'],
                          itemCount: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 122, vertical: 8),
                          child: Table(
                            border: TableBorder.all(),
                            columnWidths: {
                              0: FlexColumnWidth(1),
                              1: FlexColumnWidth(1),
                              2: FlexColumnWidth(1),
                              3: FlexColumnWidth(1),
                            },
                            children: [
                              TableRow(
                                decoration: BoxDecoration(
                                    // color: Colors.grey[200],
                                    ),
                                children: [
                                  TableCell(
                                    child: Center(
                                      child: Text(""),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(
                                          child: Text("BANK 1",
                                              style: TextStyle(
                                                  color: const Color.fromARGB(
                                                      255, 7, 75, 134),
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(
                                          child: Text("BANK 2",
                                              style: TextStyle(
                                                  color: const Color.fromARGB(
                                                      255, 7, 75, 134),
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(
                                          child: Text("BANK 3",
                                              style: TextStyle(
                                                  color: const Color.fromARGB(
                                                      255, 7, 75, 134),
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(
                                          child: Text("SETTLEMENT",
                                              style: TextStyle(
                                                  color: const Color.fromARGB(
                                                      255, 7, 75, 134),
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(child: TextField()),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(child: TextField()),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(child: TextField()),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(
                                          child: Text("STATEMENT",
                                              style: TextStyle(
                                                  color: const Color.fromARGB(
                                                      255, 7, 75, 134),
                                                  fontWeight:
                                                      FontWeight.bold))),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(child: TextField()),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(child: TextField()),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(child: TextField()),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(
                                          child: Text(
                                        "DIFFERENCE",
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 7, 75, 134),
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: Center(child: TextField()),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: TextField(),
                                    ),
                                  ),
                                  TableCell(
                                    child: Container(
                                      height: 40,
                                      child: TextField(),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(
                                255,
                                3,
                                69,
                                122,
                              ),
                            ),
                            color: const Color.fromARGB(
                              255,
                              3,
                              69,
                              122,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        height: 25,
                        width: 120,
                        child: const Center(
                            child: Text(
                          "EDIT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(255, 90, 158, 92),
                              ),
                              color: Colors.green[700],
                              borderRadius: BorderRadius.circular(5)),
                          height: 25,
                          width: 120,
                          child: const Center(
                              child: Text(
                            "SUBMIT",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
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
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FixedColumnWidth(300.0),
            1: FixedColumnWidth(350.0),
          },
          children: [
            // Main header row with subheadings
            TableRow(
              children: [
                TableCell(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
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
                                fontSize: 16,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                '', // Example text
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 63.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                '', // Example text
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 63.0,
                            color: Colors.black,
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
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              headers[1],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                '00:00',
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 63.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                '12:00',
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 1.0,
                            height: 63.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                '08:00',
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
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
              List<String> rowData = [
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
                            child: Text(
                              rowData[0],
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(""),
                          width: 1.0,
                          height: 50.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              rowData[1],
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 1.0,
                          height: 50.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  TableCell(
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: TextField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: TextField(),
                          width: 1.0,
                          height: 50.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                            child: TextField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: TextField(),
                          width: 1.0,
                          height: 50.0,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Center(
                            child: TextField(
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: TextField(),
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