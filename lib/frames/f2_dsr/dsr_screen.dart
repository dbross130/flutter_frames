import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/searchpage.dart';
import 'package:intl/intl.dart';

class DsrScreen extends StatelessWidget {
  const DsrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "DSR",
          style: TextStyle(
              color: Colors.red.shade900,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade700),
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.grey[300]),
                    child: DropdownButton(
                      underline: Container(),
                      hint: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Product name',
                          style: TextStyle(
                              fontSize: 12,
                              backgroundColor: Colors.lightGreen[800],
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.blue.shade700,
                        size: 30,
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text('PRODUCT 1'),
                          value: 'product1',
                        ),
                        DropdownMenuItem(
                          child: Text('PRODUCT 2'),
                          value: 'product1',
                        ),
                        DropdownMenuItem(
                          child: Text('PRODUCT 3'),
                          value: 'product1',
                        )
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),

              //secnd
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade700),
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey[300]),
                  child: DropdownButton(
                    underline: Container(),
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Product name',
                        style: TextStyle(
                            fontSize: 12,
                            backgroundColor: Colors.lightGreen[800],
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue.shade700,
                      size: 30,
                    ),
                    items: [
                      DropdownMenuItem(
                        child: Text('PRODUCT 1'),
                        value: 'product1',
                      ),
                      DropdownMenuItem(
                        child: Text('PRODUCT 2'),
                        value: 'product1',
                      ),
                      DropdownMenuItem(
                        child: Text('PRODUCT 3'),
                        value: 'product1',
                      )
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ),

              TextButton(
                onPressed: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2015, 8),
                    lastDate: DateTime(2101),
                    initialEntryMode: DatePickerEntryMode.input,
                  );
                  if (picked != null) {
                    // Handle selected date
                  }
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 1000),
                      child: Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.blue.shade900,
                        )),
                        child: Center(
                          child: Text(
                            DateFormat('dd-MM-yyyy').format(DateTime.now()),
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 1000),
                    //   child: IconButton(
                    //     icon: Icon(Icons.search,
                    //         color: const Color.fromARGB(255, 7, 75, 134)),
                    //     onPressed: () {
                    //       // Implement search functionality
                    //     },
                    //   ),
                    // ),
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
                                  searchpage(selectedDate: picked),
                            ),
                          );
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 1000),
                        child: Icon(Icons.search),
                      ),
                    ),
                  ],
                ),
              ),
              CustomizableTable(
                headers: [
                  'D A T E',
                  'TANK 1',
                  'TANK 2',
                  'TANK 3',
                  'OPENING STOCK',
                  'RECEIPT',
                  'TOTAL STOCK',
                  'OPENING METER READING',
                  'TEST', // Existing header
                  'METER SALE', // New header
                  'DIP SALE', // New header
                  'STOCK \n [GAIN/LOSS]', // New header
                  'CUMULATIVE \n SALE', // New header with subcategories
                  'TOTAL ENGINE & \nGEAR OIL SALES', // New header
                  'REMARKS', // New header
                ],
                itemCount: 31, // Changed to 31 to include 31 days
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
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
                  Container(
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
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
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
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(),
              columnWidths: {
                0: FixedColumnWidth(50.0),
                1: FixedColumnWidth(170.0),
                2: FixedColumnWidth(170.0),
                3: FixedColumnWidth(170.0),
                4: FixedColumnWidth(90.0),
                5: FixedColumnWidth(90.0),
                6: FixedColumnWidth(100.0),
                7: FixedColumnWidth(420.0),
                8: FixedColumnWidth(80.0),
                9: FixedColumnWidth(100.0),
                10: FixedColumnWidth(100.0),
                11: FixedColumnWidth(150.0),
                12: FixedColumnWidth(180.0),
                13: FixedColumnWidth(
                    200.0), // New column "ENGINE & GEAR OIL SALES"
                14: FixedColumnWidth(150.0), // New column "REMARKS"
              },
              children: [
                // Main header row with subheadings
                TableRow(
                  children: [
                    TableCell(
                      child: Center(
                        child: Transform.rotate(
                          angle: -1.5708,
                          child: Container(
                            height: 150,
                            child: Center(
                              child: Text(
                                headers[0],
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ...List.generate(
                        3,
                        (index) => TableCell(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(),
                                      ),
                                    ),
                                    height: 70, // Set the height of the header
                                    child: Center(
                                      child: Text(
                                        headers[index + 1],
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 7, 75, 134),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14, // Adjust font size here
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                            child: Text(
                                          'DIP',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 112, 180, 235),
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                      Container(
                                        width: 1,
                                        height:
                                            123, // Set the height to cover the entire cell
                                        color:
                                            Colors.black, // Vertical line color
                                      ),
                                      Expanded(
                                        child: Center(
                                            child: Text(
                                          'WATER\nDIP',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 112, 180, 235),
                                              fontWeight: FontWeight.bold),
                                        )), // Changed here
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                    TableCell(
                      child: Center(
                        child: Container(
                          height: 100, // Set the height of the header
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'OPENING',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14, // Adjust font size here
                                ),
                              ),
                              Text(
                                'STOCK', // Changed here
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14, // Adjust font size here
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Container(
                          height: 100, // Set the height of the header
                          child: Center(
                            child: Text(
                              'RECEIPT',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 7, 75, 134),
                                fontWeight: FontWeight.bold,
                                fontSize: 14, // Adjust font size here
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Container(
                          height: 100, // Set the height of the header
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'TOTAL',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14, // Adjust font size here
                                ),
                              ),
                              Text(
                                'STOCK', // Changed here
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14, // Adjust font size here
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(),
                              ),
                            ),
                            height: 60, // Set the height of the header
                            child: Center(
                              child: Text(
                                headers[7], // "OPENING METER READING"
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14, // Adjust font size here
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              ...List.generate(
                                  3,
                                  (index) => Expanded(
                                        child: Column(
                                          children: [
                                            Center(
                                                child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      15.0),
                                                  child: Text(
                                                    'MACHINE ${index + 1}',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 204, 95, 87),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  width: 1.0,
                                                  height: 50.0,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            )),
                                            Container(
                                              width: 180,
                                              height: 1.0,
                                              color: Colors.black,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Center(
                                                      child: Text(
                                                    'N.ID',
                                                    style: TextStyle(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 7, 76, 134),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                                ),
                                                Container(
                                                  width: 1.0,
                                                  height: 80.0,
                                                  color: Colors.black,
                                                ),
                                                Expanded(
                                                  child: Center(
                                                      child: Text(
                                                    'N.ID',
                                                    style: TextStyle(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 7, 75, 134),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                                ),
                                                Container(
                                                  width: 1.0,
                                                  height: 80.0,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80, left: 20),
                        child: Text(
                          headers[8],
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80, left: 20),
                        child: Text(
                          headers[9], // New column "METER SALE"
                          style: TextStyle(
                            color: Color.fromARGB(255, 7, 75, 134),
                            fontWeight: FontWeight.bold,
                            fontSize: 14, // Adjust font size here
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80, left: 20),
                        child: Text(
                          headers[10], // New column "DIP SALE"
                          style: TextStyle(
                            color: const Color.fromARGB(255, 7, 75, 134),
                            fontWeight: FontWeight.bold,
                            fontSize: 14, // Adjust font size here
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80, left: 20),
                        child: Text(
                          headers[11], // New column "STOCK [GAIN/LOSS]"
                          style: TextStyle(
                            color: Color.fromARGB(255, 7, 75, 134),
                            fontWeight: FontWeight.bold,
                            fontSize: 14, // Adjust font size here
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 80, left: 20),
                            child: Text(
                              headers[12], // New column "CUMULATIVE SALES"
                              style: TextStyle(
                                color: const Color.fromARGB(255, 7, 75, 134),
                                fontWeight: FontWeight.bold,
                                fontSize: 14, // Adjust font size here
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TableCell(
                      child: Column(
                        children: [
                          Container(
                            height: 100, // Set the height of the header
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                child: Text(
                                  headers[
                                      13], // New column "TOTAL ENGINE AND GEAR OIL SALES"
                                  style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 7, 75, 134),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14, // Adjust font size here
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 1,
                            color: Colors.black,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Center(
                                    child: Text(
                                  'PACKED',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 112, 180, 235),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13, // Adjust font size here
                                  ),
                                )),
                              ),
                              Container(
                                  width: 1.0,
                                  height:
                                      90, // Set the height to cover the entire cell
                                  color: Colors.black // Vertical line color
                                  ),
                              Expanded(
                                child: Center(
                                    child: Text(
                                  'LOOSE',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 112, 180, 235),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13, // Adjust font size here
                                  ),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Container(
                          height: 60, // Set the height of the header
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Text(
                                headers[14], // New column "REMARKS"
                                style: TextStyle(
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14, // Adjust font size here
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Data rows
                ...List<TableRow>.generate(itemCount + 1, (index) {
                  // Generate dummy data for demonstration
                  List<dynamic> rowData = [
                    if (index == itemCount)
                      "C/R"
                    else if (index <= itemCount)
                      (index + 1).toString()
                    else
                      '',
                    '$index+1',
                    '',
                    '',
                    '', // "OPENING STOCK"
                    '', // "RECEIPT"
                    '', // "TOTAL STOCK"
                    [
                      ['', ''], // MACHINE 1
                      ['', ''], // MACHINE 2
                      ['', ''], // MACHINE 3
                    ], // "OPENING METER READING"
                    '', // "Test"
                    '', // "METER SALE"
                    '', // "DIP SALE"
                    '', // "STOCK [GAIN/LOSS]"
                    '', // "CUMULATIVE SALES" with subcategories
                    ['', ''], // "TOTAL ENGINE AND GEAR OIL SALES"
                    '', // "REMARKS"
                  ];
                  return TableRow(
                    children: [
                      TableCell(
                        child: Center(
                            child: rowData[1] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      ...List.generate(
                          3,
                          (i) => TableCell(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Center(
                                          child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      )),
                                    ),
                                    Container(
                                      width: 1.0,
                                      height: 49.0,
                                      color: Colors.black,
                                    ),
                                    Expanded(
                                      child: Center(
                                          child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      )),
                                    ),
                                  ],
                                ),
                              )),
                      TableCell(
                        child: Center(
                            child: rowData[4] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      TableCell(
                        child: Center(
                            child: rowData[5] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      TableCell(
                        child: Center(
                            child: rowData[6] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      TableCell(
                        child: Row(
                          children: [
                            ...List.generate(
                                3,
                                (i) => Expanded(
                                      child: Column(
                                        children: [
                                          if (index >= 0)
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Center(
                                                      child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none),
                                                  )),
                                                ),
                                                Container(
                                                  width: 1.0,
                                                  height: 49.0,
                                                  color: Colors.black,
                                                ),
                                                Expanded(
                                                  child: Center(
                                                      child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none),
                                                  )),
                                                ),
                                                Container(
                                                  width: 1.0,
                                                  height: 49.0,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                        ],
                                      ),
                                    )),
                          ],
                        ),
                      ),
                      TableCell(
                        child: Center(
                            child: rowData[8] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      TableCell(
                        child: Center(
                            child: rowData[9] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      TableCell(
                        child: Center(
                            child: rowData[10] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      TableCell(
                        child: Center(
                            child: rowData[11] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      TableCell(
                        child: Center(
                            child: rowData[12] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                      TableCell(
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                  child: TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ) // "PACKED"
                                  ),
                            ),
                            Container(
                              width: 1.0,
                              height: 47.0,
                              color: Colors.black,
                            ),
                            Expanded(
                              child: Center(
                                child: TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ), // "LOOSE"
                              ),
                            ),
                          ],
                        ),
                      ),
                      TableCell(
                        child: Center(
                            child: rowData[13] = const TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ),
                    ],
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
