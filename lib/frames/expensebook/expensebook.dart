import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/expensebook/expense_searchpage.dart';
import 'package:intl/intl.dart';

class Expensebook extends StatelessWidget {
  const Expensebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'EXPENSE BOOK',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red.shade900,
          ),
        ),
      ),
      // body: Column(
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         IconButton(
      //             onPressed: () {},
      //             icon: Icon(
      //               Icons.search,
      //               size: 33,
      //               color: Colors.blue.shade800,
      //             ))
      //       ],
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: SingleChildScrollView(
      //         scrollDirection: Axis.horizontal,
      //         child: Container(
      //           decoration: BoxDecoration(border: Border.all()),
      //           child: Column(
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Padding(
      //                     padding: const EdgeInsets.only(left: 750, top: 20),
      //                     child: Container(
      //                       height: 28,
      //                       width: 190,
      //                       decoration:
      //                           BoxDecoration(color: Colors.green.shade900),
      //                       child: const Center(
      //                         child: Text(
      //                           'VIEW TOTAL MONTH EXPENSE',
      //                           style: TextStyle(
      //                               color: Colors.white,
      //                               fontWeight: FontWeight.bold,
      //                               fontSize: 12),
      //                         ),
      //                       ),
      //                     ),
      //                   )
      //                 ],
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(right: 450),
      //                 child: Container(
      //                   height: 30,
      //                   width: 200,
      //                   decoration: BoxDecoration(border: Border.all()),
      //                   child: const Padding(
      //                     padding: EdgeInsets.all(8.0),
      //                     child: Text(
      //                       'DATE:',
      //                       style: TextStyle(
      //                           fontSize: 10, fontWeight: FontWeight.bold),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.all(25.0),
      //                 child: Container(
      //                   decoration: BoxDecoration(
      //                     border: Border.all(),
      //                   ),
      //                   child: DataTable(
      //                     columnSpacing: 200,
      //                     headingTextStyle: TextStyle(
      //                         color: Colors.blue.shade900,
      //                         fontWeight: FontWeight.bold,
      //                         fontSize: 15),
      //                     border: TableBorder.all(),
      //                     columns: const [
      //                       DataColumn(label: Text('No')),
      //                       DataColumn(label: Text('EXPENSES')),
      //                       DataColumn(label: Text('AMOUNT')),
      //                       DataColumn(label: Text('MODE OF TRANSACTION')),
      //                     ],
      //                     rows: [
      //                       DataRow(cells: [
      //                         const DataCell(Text('1')),
      //                         DataCell(TextField(
      //                             decoration: InputDecoration(
      //                           hintText: 'IP1',
      //                           hintStyle:
      //                               TextStyle(color: Colors.red.shade700),
      //                         ))),
      //                         DataCell(TextField(
      //                             decoration: InputDecoration(
      //                           hintText: 'IP2',
      //                           hintStyle:
      //                               TextStyle(color: Colors.red.shade700),
      //                         ))),
      //                         DataCell(Padding(
      //                           padding: const EdgeInsets.all(8.0),
      //                           child: Container(
      //                             width: 150,
      //                             height: 30,
      //                             decoration: BoxDecoration(
      //                                 border: Border.all(
      //                                     width: 2, color: Colors.grey),
      //                                 borderRadius: BorderRadius.circular(8)),
      //                             child: DropdownButton(
      //                               hint: Padding(
      //                                 padding: const EdgeInsets.all(6.0),
      //                                 child: Text(
      //                                   'CASH/ONLINE',
      //                                   style: TextStyle(
      //                                       color: Colors.blue.shade900,
      //                                       fontWeight: FontWeight.bold,
      //                                       fontSize: 12),
      //                                 ),
      //                               ),
      //                               iconEnabledColor: Colors.blue.shade600,
      //                               iconDisabledColor: Colors.blue.shade900,
      //                               iconSize: 30,
      //                               items: [],
      //                               onChanged: (value) {},
      //                             ),
      //                           ),
      //                         )),
      //                       ]),
      //                       const DataRow(cells: [
      //                         DataCell(Text('2')),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                       ]),
      //                       const DataRow(cells: [
      //                         DataCell(Text('3')),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                       ]),
      //                       const DataRow(cells: [
      //                         DataCell(Text('4')),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                       ]),
      //                       const DataRow(cells: [
      //                         DataCell(Text('3')),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                       ]),
      //                       const DataRow(cells: [
      //                         DataCell(Text('4')),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                       ]),
      //                       const DataRow(cells: [
      //                         DataCell(Text('3')),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                       ]),
      //                       const DataRow(cells: [
      //                         DataCell(Text('4')),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                       ]),
      //                       const DataRow(cells: [
      //                         DataCell(Text('3')),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                       ]),
      //                       const DataRow(cells: [
      //                         DataCell(Text('4')),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                         DataCell(TextField()),
      //                       ]),
      //                     ],
      //                   ),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
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
                                ExpenseSearchpage(selectedDate: picked),
                          ),
                        );
                      }
                    },
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.blue.shade900,
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
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 750, top: 20, right: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 28,
                              width: 190,
                              decoration:
                                  BoxDecoration(color: Colors.green.shade900),
                              child: const Center(
                                child: Text(
                                  'VIEW TOTAL MONTH EXPENSE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 40, right: 20, left: 30),
                            child: Container(
                              width: 150,
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
                        padding:
                            const EdgeInsets.only(left: 25, right: 25, top: 25),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: DataTable(
                            columnSpacing: 150,
                            headingTextStyle: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                            border: TableBorder.all(),
                            columns: const [
                              DataColumn(label: Text('No')),
                              DataColumn(label: Text('EXPENSES')),
                              DataColumn(label: Text('AMOUNT')),
                              DataColumn(label: Text('MODE OF TRANSACTION')),
                            ],
                            rows: [
                              DataRow(cells: [
                                const DataCell(Text('1')),
                                DataCell(TextField(
                                    decoration: InputDecoration(
                                  hintText: 'IP1',
                                  hintStyle:
                                      TextStyle(color: Colors.red.shade700),
                                ))),
                                DataCell(TextField(
                                    decoration: InputDecoration(
                                  hintText: 'IP2',
                                  hintStyle:
                                      TextStyle(color: Colors.red.shade700),
                                ))),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.grey),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: DropdownButton(
                                      hint: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text(
                                          'CASH/ONLINE',
                                          style: TextStyle(
                                              color: Colors.blue.shade900,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      iconEnabledColor: Colors.blue.shade600,
                                      iconDisabledColor: Colors.blue.shade900,
                                      iconSize: 30,
                                      items: const [],
                                      onChanged: (value) {},
                                    ),
                                  ),
                                )),
                              ]
                              ),
                              const DataRow(cells: [
                                DataCell(Text('3')),
                                DataCell(TextField()),
                                DataCell(TextField()),
                                DataCell(TextField()),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('4')),
                                DataCell(TextField()),
                                DataCell(TextField()),
                                DataCell(TextField()),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('5')),
                                DataCell(TextField()),
                                DataCell(TextField()),
                                DataCell(TextField()),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('6')),
                                DataCell(TextField()),
                                DataCell(TextField()),
                                DataCell(TextField()),
                              ]),
                              const DataRow(cells: [
                                DataCell(Text('7')),
                                DataCell(TextField()),
                                DataCell(TextField()),
                                DataCell(TextField()),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Container(
                          width: 835,
                          height: 35,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade900)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'TOTAL EXPENSE :',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                //TextField(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 10),
                              child: Container(
                                width: 405,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue.shade900)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'CASH EXPENSE :',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      //TextField()
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 10),
                              child: Container(
                                width: 405,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue.shade900)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'ONLINE EXPENSE :',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      // TextField()
                                    ],
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Function to show time picker dialog
}
