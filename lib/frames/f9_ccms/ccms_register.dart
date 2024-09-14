import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f9_ccms/ccmssearchpage.dart';
import 'package:intl/intl.dart';

class CCMSRegister extends StatelessWidget {
  const CCMSRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CCMS REGISTER',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 930),
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Center(
                        child: Text(
                          DateFormat('MM-yyyy').format(DateTime.now()),
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
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
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.blue.shade900,
                        ),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 30, bottom: 30),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade900)),
                  child: Column(
                    children: [
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
                              DataColumn(label: Text('DATE')),
                              DataColumn(label: Text('COMPANY NAME')),
                              DataColumn(label: Text('CONTACT NO:')),
                              DataColumn(label: Text('QUANTITY')),
                              DataColumn(label: Text('RATE')),
                              DataColumn(label: Text('AMOUNT')),
                              DataColumn(label: Text('TRANSACTION')),
                              DataColumn(label: Text('TOTAL')),
                            ],
                            rows: [
                              DataRow(cells: [
                                const DataCell(Text('1')),
                                DataCell(Text(
                                  'IP1',
                                  style: TextStyle(color: Colors.red.shade700),
                                )),
                                DataCell(Text(
                                  'IP2',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataCell(Text(
                                  'IP3',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataCell(DropdownButton(
                                  isExpanded: true,
                                  hint: Text(
                                    'IP4',
                                    style:
                                        TextStyle(color: Colors.red.shade700),
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
                                DataCell(Text(
                                  'CAL1',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.bold),
                                )),
                                DataCell(Container(
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: DropdownButton(
                                    hint: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'AUTO',
                                        style: TextStyle(
                                            color: Colors.red.shade700),
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
                                    ],
                                    onChanged: (value) {},
                                  ),
                                )),
                                DataCell(Text(
                                  'CAL2',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.bold),
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 500, bottom: 10, left: 10),
                            child: Container(
                              height: 30,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                  child: Text(
                                'UPLOAD PHOTO [IP5]',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'TOTAL MONTHLY CCMS :',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                            ),
                            child: Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                              child: Center(
                                child: Text(
                                  'CAL3',
                                  style: TextStyle(
                                      color: Colors.red.shade500,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 350, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
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
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.shade900,
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
    );
  }
}
