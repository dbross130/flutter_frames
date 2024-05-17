import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
    home: CaWorksheet(),
  ));
}

class CaWorksheet extends StatefulWidget {
  const CaWorksheet({super.key});

  @override
  State<CaWorksheet> createState() => _CaWorksheetState();
}

class _CaWorksheetState extends State<CaWorksheet> {
  @override
  Widget build(BuildContext context) {
    String date = DateFormat('dd-MM-yyyy').format(DateTime.now());
    TimeOfDay? _selectedTime;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CA WORKSHEET'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.search,
                            size: 26,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'SEARCH',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    verticalDirection: VerticalDirection.down,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    border:
                                        Border.all(color: Colors.blue.shade900),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: DropdownButton(
                                    dropdownColor: Colors.blue.shade100,
                                    isExpanded: true,
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      size: 30,
                                      color: Colors.blue.shade900,
                                    ),
                                    hint: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'CA NAME (IP1)',
                                        style: TextStyle(
                                          color: Colors.blue.shade900,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    items: const [
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 1',
                                        child: Text('Item 1'),
                                      ),
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 2',
                                        child: Text('Item 2'),
                                      ),
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 3',
                                        child: Text('Item 3'),
                                      ),
                                      // Add more DropdownMenuItems as needed
                                    ],
                                    onChanged: (value) {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 35,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    border:
                                        Border.all(color: Colors.blue.shade900),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: DropdownButton(
                                    dropdownColor: Colors.blue.shade100,
                                    isExpanded: true,
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      size: 30,
                                      color: Colors.blue.shade900,
                                    ),
                                    hint: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'SHIFT (IP2)',
                                        style: TextStyle(
                                          color: Colors.blue.shade900,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    items: const [
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 1',
                                        child: Text('Item 1'),
                                      ),
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 2',
                                        child: Text('Item 2'),
                                      ),
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 3',
                                        child: Text('Item 3'),
                                      ),
                                      // Add more DropdownMenuItems as needed
                                    ],
                                    onChanged: (value) {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 40, bottom: 20),
                            child: Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  border:
                                      Border.all(color: Colors.blue.shade900),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  DropdownButton(
                                    dropdownColor: Colors.blue.shade100,
                                    isExpanded: true,
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.blue.shade900,
                                    ),
                                    hint: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'MACHINE NO:',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue.shade900),
                                      ),
                                    ),
                                    items: const [
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 1',
                                        child: Text('Item 1'),
                                      ),
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 2',
                                        child: Text('Item 2'),
                                      ),
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 3',
                                        child: Text('Item 3'),
                                      ),
                                      // Add more DropdownMenuItems as needed
                                    ],
                                    onChanged: (value) {},
                                  ),
                                  DropdownButton(
                                    dropdownColor: Colors.blue.shade100,
                                    isExpanded: true,
                                    icon: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.blue.shade900,
                                    ),
                                    hint: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'NOZZLE ID:(IP3)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue.shade900,
                                        ),
                                      ),
                                    ),
                                    items: const [
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 1',
                                        child: Text('Item 1'),
                                      ),
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 2',
                                        child: Text('Item 2'),
                                      ),
                                      DropdownMenuItem(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        value: 'Item 3',
                                        child: Text('Item 3'),
                                      ),
                                      // Add more DropdownMenuItems as needed
                                    ],
                                    onChanged: (value) {},
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 410, top: 40, right: 20),
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue.shade900),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  DateFormat('dd-MM-yyyy')
                                      .format(DateTime.now()),
                                  style: TextStyle(
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.bold
                                      //decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                              child: GestureDetector(
                                onTap: () {
                                  // Function to show time picker dialog
                                  _showTimePickerDialog(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, top: 5, bottom: 5),
                                  child: Text(
                                    'Start time: ${_selectedTime?.format(context) ?? "Select"}',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 130,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 10, top: 5, bottom: 5),
                                child: Text(
                                  'End time:',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: DataTable(
                            headingTextStyle: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                            border: TableBorder.all(),
                            columns: const [
                              DataColumn(label: Text('No')),
                              DataColumn(label: Text('Opening \n Reading')),
                              DataColumn(label: Text('Closing \nReading')),
                              DataColumn(label: Text('Test')),
                              DataColumn(
                                  label: Text('Wrong \n Fuel \nVolume ')),
                              DataColumn(label: Text('Sales Liter')),
                              DataColumn(label: Text('Rate')),
                              DataColumn(label: Text('Sales\nAmount')),
                            ],
                            rows: [
                              DataRow(cells: [
                                const DataCell(Text('1')),
                                DataCell(Text(
                                  'IP4',
                                  style: TextStyle(color: Colors.red.shade700),
                                )),
                                DataCell(Text(
                                  'IP5',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataCell(Text(
                                  'IP6',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataCell(Text(
                                  'IP7',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataCell(Text(
                                  'CAL1',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataCell(Text(
                                  'IP8',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataCell(Text(
                                  'CAL2',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.bold),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('2')),
                                DataCell(Text('200')),
                                DataCell(Text('300')),
                                DataCell(Text('Test 2')),
                                DataCell(Text('5')),
                                DataCell(Text('30')),
                                DataCell(Text('2.8')),
                                DataCell(Text('84.0')),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 600, top: 10),
                            child: Text(
                              'TOTAL SALE:',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'CAL3 -',
                                  style: TextStyle(
                                      color: Colors.red.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: DataTable(
                            headingRowHeight: 20,
                            columnSpacing: 1,
                            headingTextStyle: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                            border: TableBorder.all(),
                            columns: const [
                              DataColumn(
                                label: Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Text('CASH'),
                                ),
                              ),
                              DataColumn(
                                label: Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Text('COIN'),
                                ),
                              ),
                              DataColumn(
                                  label: Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text('CARD'),
                              )),
                              DataColumn(
                                  label: Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text('SCAN'),
                              )),
                              DataColumn(
                                  label: Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text('PPC'),
                              )),
                              DataColumn(
                                  label: Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text('CREDIT'),
                              )),
                              DataColumn(
                                  label: Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text('CCMS'),
                              )),
                              DataColumn(
                                  label: Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text('MLA COUPON'),
                              )),
                              DataColumn(
                                  label: Padding(
                                padding: EdgeInsets.only(left: 8, right: 8),
                                child: Text('EXTRA REWARD'),
                              )),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue.shade900)),
                                  ),
                                )),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue.shade900)),
                                  ),
                                )),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue.shade900)),
                                  ),
                                )),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue.shade900)),
                                  ),
                                )),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue.shade900)),
                                  ),
                                )),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue.shade900)),
                                  ),
                                )),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue.shade900)),
                                  ),
                                )),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    width: 75,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue.shade900)),
                                  ),
                                )),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    width: 90,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue.shade900)),
                                  ),
                                )),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 570,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'SHORT/',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.red.shade900,
                                  decoration: TextDecoration.underline),
                            ),
                            Text(
                              'EXCESS:',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.blue.shade900,
                                  decoration: TextDecoration.underline),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue.shade900)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'CAL3 -',
                                    style: TextStyle(
                                        color: Colors.red.shade900,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.green.shade800)),
              onPressed: () {},
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }

  // Function to show time picker dialog
  Future<void> _showTimePickerDialog(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    // if (pickedTime != null) {
    // setState(() {
    //       _selectedTime = pickedTime;
    //     });
    // }
  }
}
