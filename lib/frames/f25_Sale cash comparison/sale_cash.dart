import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f25_Sale%20cash%20comparison/sale_cash_search_page.dart';
import 'package:intl/intl.dart';

class SaleCash extends StatelessWidget {
  const SaleCash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SALES CASH COMPARISON',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 980, top: 50),
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Center(
                        child: Text(
                          DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
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
                                  SaleCashSearchPage(selectedDate: picked),
                            ),
                          );
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Icon(
                          Icons.search,
                          color: Colors.blue.shade900,
                          size: 30,
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      children: [
                        DataTable(border: TableBorder.all(), columns: const [
                          DataColumn(label: Text('')),
                          DataColumn(label: Text('VOLUME')),
                          DataColumn(label: Text('RATE')),
                          DataColumn(label: Text('AMOUNT')),
                        ], rows: [
                          DataRow(cells: [
                            DataCell(Text(
                              'PRODUCT 1',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
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
                            DataCell(Text(
                              'PRODUCT 2',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
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
                            DataCell(Text(
                              'PRODUCT 3',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            height: 50,
                            width: 433,
                            decoration: BoxDecoration(border: Border.all()),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 150),
                                  child: Text(
                                    'TOTAL AMOUNT:',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue.shade900)),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: TextField(
                                      cursorHeight: 15,
                                      decoration: InputDecoration(
                                          border: InputBorder.none),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 10),
                          child: DataTable(
                              columnSpacing: 350,
                              headingTextStyle:
                                  TextStyle(color: Colors.blue.shade900),
                              border: TableBorder.all(),
                              columns: const [
                                DataColumn(
                                    label: Text(
                                  '2T',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                                DataColumn(
                                    label: TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )),
                              ],
                              rows: [
                                DataRow(cells: [
                                  DataCell(Text(
                                    'LUBE',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                  const DataCell(TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text(
                                    'BW',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                  const DataCell(TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text(
                                    'LPG',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                                  const DataCell(TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  )),
                                ])
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 30),
                          child: Container(
                            height: 50,
                            width: 435,
                            decoration: BoxDecoration(border: Border.all()),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 150),
                                  child: Text(
                                    'TOTAL AMOUNT:',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 150,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue.shade900)),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: TextField(
                                      cursorHeight: 15,
                                      decoration: InputDecoration(
                                          border: InputBorder.none),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 100),
                              child: Text(
                                'EXPENSE:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 250,
                              height: 30,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: TextField(
                                  cursorHeight: 15,
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 35),
                              child: Text(
                                'TOTAL AMOUNT :',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 250,
                              height: 30,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                              child: const TextField(
                                cursorHeight: 15,
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 290, bottom: 10),
                              child: Text(
                                'REASON:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, bottom: 10),
                              child: Container(
                                  height: 80,
                                  width: 400,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue.shade900)),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: DataTable(
                      dataRowMaxHeight: 50,
                      border: TableBorder.all(),
                      columns: [
                        DataColumn(
                            label: Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Text(
                            'CASH',
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                        const DataColumn(
                            label: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        )),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'COIN',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'ICICI',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'FED',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'SIB',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'PHONE PE',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'PATYM',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'PPC',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'CREDIT',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'CCMS',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'MLA COUPON',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'LUBE',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'BW',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              'LPG',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell(TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                              '2T',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                          const DataCell( TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                        ]),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 770),
                    child: Text(
                      'TOTAL AMOUNT :',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 250,
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade900)),
                    child: const TextField(
                      cursorHeight: 15,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 750, top: 30),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 270, bottom: 10),
                      child: Text(
                        'DIFFERENCE:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 10),
                      child: Container(
                          height: 40,
                          width: 400,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red.shade900)),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
