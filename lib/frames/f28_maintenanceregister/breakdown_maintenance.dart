import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f9_ccms/ccmssearchpage.dart';
import 'package:intl/intl.dart';

class BreakdownMaintenance extends StatelessWidget {
  const BreakdownMaintenance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BREAKDOWN MAINTENANCE',
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
                    left: 30, right: 30, top: 50, bottom: 30),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade900)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 900, top: 70, bottom: 20),
                            child: Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                              child: Center(
                                child: Text(
                                  DateFormat('dd-MM-yyyy')
                                      .format(DateTime.now()),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          // const Padding(
                          //   padding: EdgeInsets.all(10.0),
                          //   child: Icon(Icons.search),
                          // )
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
                                          CcmsSearchPage(selectedDate: picked),
                                    ),
                                  );
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 550),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.blue.shade700,
                                  size: 36,
                                ),
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: DataTable(
                            headingTextStyle: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            border: TableBorder.all(),
                            columns: const [
                              DataColumn(label: Text('SR NO')),
                              DataColumn(label: Text('EQUIPMENT OR SYSTEM')),
                              DataColumn(label: Text('COMPLAINT DESCRIPTION')),
                              DataColumn(label: Text('MAINTENANCE DONE')),
                              DataColumn(label: Text('BREAKDOWN TIME')),
                              DataColumn(label: Text('MAINTENANCE DONE TIME')),
                              DataColumn(
                                  label: Text(
                                      'PREVIOSLY ON PREVENTIVE LIST OR NOT')),
                              DataColumn(label: Text('UPLOAD PHOTO')),
                            ],
                            rows: [
                              DataRow(cells: [
                                const DataCell(Text('1')),
                                DataCell(DropdownButton(
                                  isExpanded: true,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.blue.shade800,
                                    size: 40,
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
                                )),
                                const DataCell(TextField()),
                                const DataCell(TextField()),
                                const DataCell(TextField()),
                                const DataCell(TextField()),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue.shade900)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            "YES/NO",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          size: 32,
                                          color: Colors.blue.shade700,
                                        )
                                        // DropdownButton(
                                        //     isExpanded: true,
                                        //     icon: Icon(
                                        //       Icons.arrow_drop_down,
                                        //       size: 32,
                                        //       color: Colors.blue.shade700,
                                        //     ),
                                        //     items: [
                                        //       // DropdownMenuItem(
                                        //       //   alignment: AlignmentDirectional
                                        //       //       .topCenter,
                                        //       //   value: 'Item 1',
                                        //       //   child: Text('YES'),
                                        //       // ),
                                        //       // DropdownMenuItem(
                                        //       //   alignment: AlignmentDirectional
                                        //       //       .topCenter,
                                        //       //   value: 'Item 2',
                                        //       //   child: Text('NO'),
                                        //       // ),
                                        //     ],
                                        //     onChanged: (value) {})
                                      ],
                                    ),
                                  ),
                                )),
                                const DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                                DataCell(TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 150, bottom: 40, top: 50),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.red.shade700,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Center(
                                child: Text(
                                  'DELETE',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade700,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Center(
                                child: Text(
                                  'EDIT',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.green.shade700,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Center(
                                child: Text(
                                  'SUBMIT',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
