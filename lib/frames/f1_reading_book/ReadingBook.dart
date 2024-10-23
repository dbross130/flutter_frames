
import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f1_reading_book/readingsearch.dart';
import 'package:intl/intl.dart';

class ReadingBook extends StatelessWidget {
  const ReadingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Reading Book',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red.shade900,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade900),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 450,
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(), color: Colors.blue.shade50),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'VIEW',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
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
                                Readingsearchpage(selectedDate: picked),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                          border: Border.all(), color: Colors.blue.shade50),
                      child: Center(
                        child: Text(
                          'SEARCH',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue.shade700,
                              ),
                            ),
                            child: Center(
                              child: DropdownButton(
                                isExpanded: true,
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.blue.shade900,
                                  size: 30,
                                ),
                                iconSize: 30,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                hint: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'SHIFT',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.blue.shade900,
                                    ),
                                  ),
                                ),
                                items: const [
                                  DropdownMenuItem(
                                    alignment: AlignmentDirectional.topCenter,
                                    value: 'Item 1',
                                    child: Text('Item 1'),
                                  ),
                                  DropdownMenuItem(
                                    alignment: AlignmentDirectional.topCenter,
                                    value: 'Item 2',
                                    child: Text('Item 2'),
                                  ),
                                  DropdownMenuItem(
                                    alignment: AlignmentDirectional.topCenter,
                                    value: 'Item 3',
                                    child: Text('Item 3'),
                                  ),
                                ],
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: Colors.amberAccent.shade700)),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, top: 5, bottom: 5),
                                  child: Text(
                                    'LOCATION/MC NO',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 550,
                                height: 30,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blue.shade900),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'TIME',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue.shade900),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade100),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'N.ID',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.redAccent.shade700),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '  PDT',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 550,
                                height: 30,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextField(
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade100),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'N.ID',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green.shade900),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '  PDT',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 550,
                                height: 30,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextField(
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade100),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'N.ID',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.indigo.shade900),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '  PDT',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 550,
                                height: 30,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextField(
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade100),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'N.ID',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 156, 107, 9)),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '  PDT',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 550,
                                height: 30,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextField(
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Colors.amberAccent.shade700)),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: Text(
                                'LOCATION/MC NO',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade100),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'N.ID',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.redAccent.shade700),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '  PDT',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 550,
                                height: 30,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextField(
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade100),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'N.ID',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green.shade900),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '  PDT',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 550,
                                height: 30,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextField(
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade100),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'N.ID',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.deepPurple.shade900),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '  PDT',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 550,
                                height: 30,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextField(
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade100),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'N.ID',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 156, 107, 9)),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '  PDT',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 550,
                                height: 30,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextField(
                                    cursorHeight: 15,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 30),
                          child: Container(
                            height: 25,
                            width: 150,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 132, 189, 236),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Center(
                                child: Text(
                              'UPLOAD PHOTO +',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 165,
                            top: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                height: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow.shade800)),
                                child: const Center(child: Text('DIP')),
                              ),
                              Container(
                                width: 160,
                                height: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow.shade800)),
                                child: const Center(child: Text('WATERDIP')),
                              ),
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.yellow.shade800)),
                                child: const Center(child: Text('STOCK')),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 60, bottom: 60, top: 10),
                          child: DataTable(border: TableBorder.all(), columns: [
                            DataColumn(
                              label: Container(
                                width: 55,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: Colors.red.shade900,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30))),
                                child: const Center(child: Text('PDT')),
                              ),
                            ),
                            const DataColumn(
                                label: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('TANK1'))),
                            DataColumn(
                                label: Text(
                              '[IP2]',
                              style: TextStyle(
                                  color: Colors.red.shade800,
                                  fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              '[IP3]',
                              style: TextStyle(
                                  color: Colors.red.shade800,
                                  fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              '[CAL1]',
                              style: TextStyle(
                                  color: Colors.red.shade800,
                                  fontWeight: FontWeight.bold),
                            )),
                          ], rows: [
                            DataRow(cells: [
                              DataCell(Container(
                                width: 55,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: Colors.green.shade900,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                child: const Center(child: Text('PDT')),
                              )),
                              const DataCell(Text('TANK1')),
                              const DataCell(TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              )),
                              const DataCell(TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              )),
                              const DataCell(TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              )),
                            ]),
                            DataRow(cells: [
                              DataCell(Container(
                                width: 55,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: Colors.purple.shade900,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                child: const Center(child: Text('PDT')),
                              )),
                              const DataCell(Text('TANK1')),
                              const DataCell(TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              )),
                              const DataCell(TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              )),
                              const DataCell(TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              )),
                            ]),
                            DataRow(cells: [
                              DataCell(Container(
                                width: 55,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: Colors.yellow.shade700,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                child: const Center(child: Text('PDT')),
                              )),
                              const DataCell(Text('TANK1')),
                              const DataCell(TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              )),
                              const DataCell(TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              )),
                              const DataCell(TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              )),
                            ])
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 130,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
