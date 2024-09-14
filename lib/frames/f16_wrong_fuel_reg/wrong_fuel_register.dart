// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/searchpage.dart';

void main() {
  runApp(MaterialApp(
    home: WrongFuelRegister(),
  ));
}

class WrongFuelRegister extends StatefulWidget {
  @override
  _WrongFuelRegisterState createState() => _WrongFuelRegisterState();
}

class _WrongFuelRegisterState extends State<WrongFuelRegister> {
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
        title: Text(
          'WRONG FUEL REGISTER',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade900),
                  ),
                  width: 120,
                  height: 30,
                  child: Center(
                    child: Text(
                      formattedDate, // Display formatted date
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 1230, bottom: 50),
                //   child: IconButton(
                //     icon: Icon(Icons.search, color: Colors.blue.shade900),
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
                    padding: const EdgeInsets.only(left: 1230, bottom: 50),
                    child: Icon(Icons.search),
                  ),
                ),
                const SizedBox(height: 20),
                DataTable(
                  headingRowHeight: 100,
                  border: TableBorder.all(),
                  columns: [
                    DataColumn(
                      label: Column(
                        children: [
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                'CA NAME',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,
                            width: 130,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue.shade900,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    'SEARCH',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade500),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                  Icons.search,
                                  size: 20,
                                  color: Colors.blue.shade900,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    DataColumn(
                      label: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'MACHINE',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue.shade900,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: DropdownButton(
                              hint: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'NO:',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue.shade900,
                                size: 30,
                              ),
                              items: const [],
                              onChanged: (value) {},
                            ),
                          )
                        ],
                      ),
                    ),
                    DataColumn(
                      label: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'NOZZLE',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue.shade900,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: DropdownButton(
                              hint: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'ID:',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue.shade900,
                                size: 30,
                              ),
                              items: const [],
                              onChanged: (value) {},
                            ),
                          )
                        ],
                      ),
                    ),
                    DataColumn(
                      label: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'WRONG FUEL',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue.shade900,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: DropdownButton(
                              hint: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'PDT:',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue.shade900,
                                size: 30,
                              ),
                              items: const [],
                              onChanged: (value) {},
                            ),
                          )
                        ],
                      ),
                    ),
                    const DataColumn(
                      label: Text(
                        'VOLUME OF\n WRONG FUEL\n (LTR)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const DataColumn(
                      label: Text(
                        'DRAINED\n VOLUME\n (LTR)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const DataColumn(
                      label: Text(
                        'REPLACED\n VOLUME\n (LTR)',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'REPLACED',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blue.shade900,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: DropdownButton(
                              hint: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'PRODUCT',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue.shade900,
                                size: 30,
                              ),
                              items: const [],
                              onChanged: (value) {},
                            ),
                          )
                        ],
                      ),
                    ),
                    const DataColumn(
                      label: Text(
                        'MECHANICAL\n EXPENSES',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows: List.generate(
                    10,
                    (index) => DataRow(
                      cells: List.generate(
                        9,
                        (index) => DataCell(
                          TextField(
                            onChanged: (value) {
                              // Handle user input
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 600),
                  child: Row(
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
                          height: 30,
                          width: 130,
                          child: const Center(
                              child: Text(
                            "EDIT",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 90, 158, 92),
                            ),
                            color: const Color.fromARGB(255, 90, 158, 92),
                            borderRadius: BorderRadius.circular(5)),
                        height: 30,
                        width: 130,
                        child: const Center(
                            child: Text(
                          "SAVE",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
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
