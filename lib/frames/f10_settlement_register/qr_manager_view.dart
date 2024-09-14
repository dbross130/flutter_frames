// ignore_for_file: prefer_const_constructors, use_super_parameters, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, library_private_types_in_public_api


import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f10_settlement_register/qr_scan2.dart';
import 'package:flutter_frames/frames/searchpage.dart';

class QrScan extends StatefulWidget {
  const QrScan({Key? key}) : super(key: key);

  @override
  _QrScanState createState() => _QrScanState();
}

class _QrScanState extends State<QrScan> {
  String? selectedQrProvider;
  String? SelectedBank;
  DateTime _currentDate =
      DateTime.now(); // Declare variable to hold current date

  @override
  void initState() {
    super.initState();
    _currentDate = DateTime.now();
  }

  void _onSaveButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => QrScan2()), // Navigate to QrScan2 page
    );
  }

  @override
  Widget build(BuildContext context) {
    // Format day and month to always have two digits
    String formattedDate =
        '${_currentDate.day.toString().padLeft(2, '0')}/${_currentDate.month.toString().padLeft(2, '0')}/${_currentDate.year}';
    return Scaffold(
      appBar: AppBar(
        title: Text("QR SCAN",
            style: TextStyle(
                color: Colors.red.shade900, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(left: 940),
                //   child: Icon(
                //     Icons.search,
                //     color: const Color.fromARGB(255, 7, 75, 134),
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
                    padding: const EdgeInsets.only(left: 940),
                    child: Icon(Icons.search),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade900),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Container(
                          child: Center(
                            child: Text(
                              formattedDate, // Display current date
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue.shade900),
                          ),
                        ),
                        SizedBox(height: 60),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Text(
                                    "QR PROVIDER:",
                                    style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 30, 99, 32),
                                      ),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: Center(
                                        child: DropdownButton<String>(
                                          value: selectedQrProvider,
                                          hint: Center(
                                            child: Text(
                                              "IP1",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                          items: <String>[
                                            'IP1',
                                            'Phonepe',
                                            'Gpay'
                                          ].map((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              selectedQrProvider = newValue;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "QR SETTLEMENT AMOUNT:",
                                  style: TextStyle(
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 30, 99, 32),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: Text(
                                    "BANK STATEMENT AMOUNT:",
                                    style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 30, 99, 32),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "BANK NAME:",
                                  style: TextStyle(
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 30, 99, 32),
                                      ),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: Center(
                                        child: DropdownButton<String>(
                                          value: SelectedBank,
                                          hint: Center(
                                            child: Text(
                                              "IP1",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                          items: <String>[
                                            'Bank1',
                                            'Bank2',
                                            'Bank3',
                                          ].map((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              SelectedBank = newValue;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Container(
                                  child: Center(
                                    child: Text(
                                      "[+]",
                                      style: TextStyle(
                                        color: Colors.blue.shade900,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(255, 168, 30, 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 30, 99, 32),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 30, 99, 32),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 30, 99, 32),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 30, 99, 32),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 40), // Added to align correctly
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Text(
                                    "DIFFERENCE:",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding:  EdgeInsets.only(left: 80),
                                  child: DottedBorder(
                                    color: Colors.red,
                                    strokeWidth: 2,
                                    dashPattern: [4, 4],
                                    borderType: BorderType.RRect,
                                    radius: Radius.circular(6),
                                    child: Container(
                                      height: 30,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "REASON:",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        " *optional",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: DottedBorder(
                                    color: Color.fromARGB(255, 17, 96, 165),
                                    strokeWidth: 2,
                                    dashPattern: [2, 2],
                                    borderType: BorderType.RRect,
                                    child: Container(
                                      height: 80,
                                      width: 630,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Spacer between the containers
                GestureDetector(
                  onTap:
                      _onSaveButtonPressed, // Navigate when the button is tapped
                  child: Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 38, 85, 38),
                    ),
                    child: Center(
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


