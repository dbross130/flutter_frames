// next_page.dart
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, sort_child_properties_last, unnecessary_import, prefer_const_literals_to_create_immutables

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_frames/frames/searchpage.dart';

class LogBook extends StatefulWidget {
  @override
  _LogBookState createState() => _LogBookState();
}

class _LogBookState extends State<LogBook> {
  DateTime _currentDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _currentDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    // Format day and month to always have two digits
    String formattedDate =
        '${_currentDate.day.toString().padLeft(2, '0')}/${_currentDate.month.toString().padLeft(2, '0')}/${_currentDate.year}';

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('LOG BOOK',
              style: TextStyle(
                color: Colors.red.shade900,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Stack(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 130,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue.shade900,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  formattedDate,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 1000),
                            //   child: IconButton(
                            //     icon: Icon(Icons.search,
                            //         color: Colors.blue.shade900),
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
                        SizedBox(height: 10),
                        Stack(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 25),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "Opening balance:",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 130,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue.shade900),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    border: InputBorder.none),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Day: ',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 168, 30, 20),
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: '1',
                                                  style: TextStyle(
                                                    color: const Color.fromARGB(
                                                        255, 168, 30, 20),
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 73),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Cash:',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                height: 30,
                                                width: 130,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          Colors.blue.shade900),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 85),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Coin:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              height: 30,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.blue.shade900,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Day: ',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 168, 30, 20),
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: '2',
                                                  style: TextStyle(
                                                    color: const Color.fromARGB(
                                                        255, 168, 30, 20),
                                                    decoration: TextDecoration
                                                        .underline,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 73),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Cash:',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                height: 30,
                                                width: 130,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          Colors.blue.shade900),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 85),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Coin:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              height: 30,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.blue.shade900),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 83, vertical: 5),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Lube:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              height: 30,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.blue.shade900),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 28, vertical: 5),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Battery water:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              height: 30,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.blue.shade900),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 89, vertical: 5),
                                        child: Row(
                                          children: [
                                            Text(
                                              'LPG:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              height: 30,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.blue.shade900),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 53, vertical: 5),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Expenses:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              height: 30,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.blue.shade900),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 63),
                                                child: Text(
                                                  'To bank:',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                height: 30,
                                                width: 130,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          Colors.blue.shade900),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            right: 20,
                                            child: Container(
                                              height: 30,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.blue.shade900),
                                              ),
                                              child: Center(
                                                child: DropdownButton<String>(
                                                  underline: Container(),
                                                  icon: Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Colors.blue.shade900,
                                                  ),
                                                  hint: Center(
                                                      child: Text(
                                                    'BANK NAME',
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  )),
                                                  items: <String>[
                                                    'Bank 1',
                                                    'Bank 2',
                                                    'Bank 3',
                                                    'Bank 4'
                                                  ].map((String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                  onChanged:
                                                      (String? newValue) {
                                                    // Add your onChanged logic here
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 130),
                                        child: Text(
                                          "[+]",
                                          style: TextStyle(
                                              color: const Color.fromARGB(
                                                  255, 168, 30, 20),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Night: ',
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 168, 30, 20),
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 73),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Cash:',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                height: 30,
                                                width: 130,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          Colors.blue.shade900),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        border:
                                                            InputBorder.none),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 85),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Coin:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              height: 30,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        Colors.blue.shade900),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 30),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: RichText(
                                              text: TextSpan(
                                                text: 'CLOSING BALANCE:',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 168, 30, 20),
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  height: 800,
                                  width: 450,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blue.shade900),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue.shade900)),
                                  height: 800,
                                  width: 180,
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 180),
                                          child: Text(
                                            "CASH IN HAND:",
                                            style: TextStyle(
                                                color: Colors.blue.shade900,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      DottedBorder(
                                        color: Colors.red,
                                        strokeWidth: 2,
                                        dashPattern: [4, 4],
                                        borderType: BorderType.RRect,
                                        radius: Radius.circular(4),
                                        child: Container(
                                          height: 25,
                                          width: 150,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 70),
                                        child: Text(
                                          "IN HAND VARIES AND SHOW",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      DottedBorder(
                                        color: Colors.red,
                                        strokeWidth: 2,
                                        dashPattern: [4, 4],
                                        borderType: BorderType.RRect,
                                        radius: Radius.circular(4),
                                        child: Container(
                                          height: 25,
                                          width: 150,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 110),
                                        child: DottedBorder(
                                          color: Colors.red,
                                          strokeWidth: 2,
                                          dashPattern: [4, 4],
                                          borderType: BorderType.RRect,
                                          radius: Radius.circular(4),
                                          child: Container(
                                            height: 25,
                                            width: 150,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 90),
                                        child: DottedBorder(
                                          color: Colors.red,
                                          strokeWidth: 2,
                                          dashPattern: [4, 4],
                                          borderType: BorderType.RRect,
                                          radius: Radius.circular(4),
                                          child: Container(
                                            height: 25,
                                            width: 150,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 110),
                                        child: Container(
                                          width: 150,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue.shade900)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  border: InputBorder.none),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Column(
                                  //middle container
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "OPENING AMOUNT PENDING",
                                                    style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "OIL COMPANY NAME:",
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 168, 30, 20),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    "   BANK LOAN (EDFS):",
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 168, 30, 20),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          height: 121,
                                          width: 400,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blue.shade900,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 121,
                                          width: 160,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blue.shade900,
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Container(
                                                  height: 30,
                                                  width: 140,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Container(
                                                  height: 30,
                                                  width: 140,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          Colors.blue.shade900,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 560,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blue.shade900)),
                                      child: Center(
                                        child: Text(
                                          "YESTERDAY'S SALES AMOUNT",
                                          style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        DataTable(
                                            dataRowHeight: 25,
                                            // dataRowMinHeight: 10,
                                            // dataRowMaxHeight: 50,
                                            // headingRowHeight: 50,
                                            // columnSpacing: 1,
                                            headingTextStyle: TextStyle(
                                                color: Colors.blue.shade900,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                            border: TableBorder.all(
                                                color: Colors.blue.shade900),
                                            columns: const [
                                              DataColumn(
                                                label: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 16, right: 8),
                                                  child: Text('PRODUCT'),
                                                ),
                                              ),
                                              DataColumn(
                                                label: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 21, right: 8),
                                                  child: Text('QUANTITY'),
                                                ),
                                              ),
                                              DataColumn(
                                                  label: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 22, right: 8),
                                                child: Text('RATE'),
                                              )),
                                              DataColumn(
                                                  label: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 22, right: 8),
                                                child: Text('AMOUNT'),
                                              )),
                                            ],
                                            rows: [
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                            ])
                                      ],
                                    ),
                                    Container(
                                      width: 560,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blue.shade900)),
                                      child: Center(
                                        child: Text(
                                          "YESTERDAY'S SALES MARGIN",
                                          style: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        DataTable(
                                            dataRowHeight: 25,
                                            // dataRowMinHeight: 10,
                                            // dataRowMaxHeight: 50,
                                            // headingRowHeight: 50,
                                            // columnSpacing: 1,
                                            headingTextStyle: TextStyle(
                                                color: Colors.blue.shade900,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                            border: TableBorder.all(
                                                color: Colors.blue.shade900),
                                            columns: const [
                                              DataColumn(
                                                label: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 16, right: 8),
                                                  child: Text('PRODUCT'),
                                                ),
                                              ),
                                              DataColumn(
                                                label: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 21, right: 8),
                                                  child: Text('QUANTITY'),
                                                ),
                                              ),
                                              DataColumn(
                                                  label: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 22, right: 8),
                                                child: Text('RATE'),
                                              )),
                                              DataColumn(
                                                  label: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 22, right: 8),
                                                child: Text('AMOUNT'),
                                              )),
                                            ],
                                            rows: [
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Container(
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                              DataRow(
                                                cells: [
                                                  DataCell(Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//coin\
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//card
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                  DataCell(//scan
                                                      Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  )),
                                                ],
                                              ),
                                            ])
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "CLOSING AMOUNT PENDING",
                                                    style: TextStyle(
                                                      color:
                                                          Colors.blue.shade900,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "OIL COMPANY NAME:",
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 168, 30, 20),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Text(
                                                    "   BANK LOAN (EDFS):",
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 168, 30, 20),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          height: 145,
                                          width: 416,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blue.shade900),
                                          ),
                                        ),
                                        Container(
                                          height: 145,
                                          width: 144,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blue.shade900,
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12),
                                                child: Container(
                                                  height: 30,
                                                  width: 130,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15),
                                                child: Container(
                                                  height: 30,
                                                  width: 130,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      //3rd container
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blue.shade900)),
                                      height: 800,
                                      width: 200,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, top: 60),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                    child: DropdownButton(
                                                      hint: Text(
                                                        'IOC',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .red.shade700,
                                                            fontSize: 10),
                                                      ),
                                                      underline: Container(),
                                                      icon: Icon(
                                                        Icons.arrow_drop_down,
                                                        color: Colors
                                                            .blue.shade700,
                                                      ),
                                                      items: [],
                                                      onChanged: (value) {},
                                                    ),
                                                  ),
                                                  height: 30,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .blue.shade900)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 70,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .blue.shade900)),
                                                  child: Center(
                                                    child: Text(
                                                      'EDFS',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 100,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .blue.shade900)),
                                                  child: Center(
                                                    child: Text(
                                                      'IOC',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .blue.shade900)),
                                                  child: Center(
                                                    child: Text(
                                                      'EDFS',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 100,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .blue.shade900)),
                                                  child: Center(
                                                    child: Text(
                                                      'IOC',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors
                                                            .blue.shade900),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      decoration:
                                                          InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .blue.shade900)),
                                                  child: Center(
                                                    child: Text(
                                                      'IOC',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 110),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "[+]",
                                                  style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 168, 30, 20),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                ]),
              ),
            )));
  }
}
