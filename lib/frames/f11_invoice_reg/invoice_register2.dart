import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f11_invoice_reg/invoicesearchpage.dart';

class InvoiceRegister2 extends StatelessWidget {
  const InvoiceRegister2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'INVOICE REGISTER. 2',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 300, top: 30),
                child: Container(
                  height: 50,
                  width: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.shade200),
                  child: Center(
                    child: Container(
                        height: 30,
                        width: 200,
                        color: Colors.yellow,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 10, bottom: 5),
                          child: Row(
                            children: [
                              const Text(
                                'PRODUCT NAME',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                              DropdownButton(
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.blue.shade600,
                                ),
                                iconSize: 30,
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
                                underline: Container(),
                                isExpanded: true,
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 1000),
              //   child: Icon(
              //     Icons.search,
              //     color: Colors.blue.shade800,
              //     size: 30,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 1000),
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
                                InvoicesearchPage(selectedDate: picked),
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
              ),
              const SizedBox(
                height: 20,
              ),
              const _CustomizableTable(
                headers: [
                  'SI.no',
                  'INVOICE Quantity',
                  'RECEIPT DENSITY',
                ],
                itemCount: 31,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade800,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text(
                          'EDIT',
                          style: TextStyle(fontWeight: FontWeight.bold),
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
                          color: Colors.green.shade400,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
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

class _CustomizableTable extends StatelessWidget {
  final List<String> headers;
  final int itemCount;

  const _CustomizableTable({required this.headers, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FixedColumnWidth(60.0),
            1: FixedColumnWidth(100.0),
            2: FixedColumnWidth(900.0),
          },
          children: [
            // Main header row with subheadings
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Text(
                        headers[0],
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0, left: 10),
                      child: Text(
                        headers[1],
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(1),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Colors.black),
                          ),
                        ),
                        height: 60, // Set the height of the header
                        child: Center(
                          child: Text(
                            headers[2], // "OPENING METER READING"
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 14, // Adjust font size here
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ...List.generate(
                              5,
                              (index) => Expanded(
                                    child: Column(
                                      children: [
                                        Center(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 80),
                                              child: Text(
                                                'COMP ${index + 1}',
                                                style: TextStyle(
                                                    color: Colors.blue.shade700,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              width: 1.0,
                                              height: 60.0,
                                              color: Colors.black,
                                            ),
                                          ],
                                        )),
                                        Container(
                                          width: 300,
                                          height: 1.0,
                                          color: Colors.black,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Center(
                                                  child: Text(
                                                'Den/Nat',
                                                style: TextStyle(
                                                    color: Colors.blue.shade800,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ),
                                            Container(
                                              width: 1.0,
                                              height: 70.0,
                                              color: Colors.black,
                                            ),
                                            Expanded(
                                              child: Center(
                                                  child: Text(
                                                'Temp',
                                                style: TextStyle(
                                                    color: Colors.blue.shade800,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ),
                                            Container(
                                              width: 1.0,
                                              height: 70.0,
                                              color: Colors.black,
                                            ),
                                            const Expanded(
                                              child: Center(
                                                  child: Text(
                                                'Den 15 c',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 218, 89, 79),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                            ),
                                            Container(
                                              width: 1.0,
                                              height: 70.0,
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
              ],
            ),
            // Data rows
            ...List<TableRow>.generate(itemCount, (index) {
              // Generate dummy data for demonstration
              List<dynamic> rowData = [
                ' $index',
                '',
                '',

                '', // Placeholder for additional data
              ];
              return TableRow(
                children: [
                  TableCell(child: Center(child: Text(rowData[0].toString()))),
                  TableCell(
                      child: Center(
                          child: rowData[1] = const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ))),
                  TableCell(
                      child: Row(
                    children: [
                      ...List.generate(
                        5,
                        (i) => Expanded(
                          child: Column(
                            children: [
                              if (index >= 0)
                                Row(
                                  children: [
                                    Expanded(
                                      child: Center(
                                          child: rowData[2] = const TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      )),
                                    ),
                                    Container(
                                      width: 1.0,
                                      height: 49,
                                      color: Colors.black,
                                    ),
                                    const Expanded(
                                        child: Center(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    )),
                                    Container(
                                      width: 1,
                                      height: 49,
                                      color: Colors.black,
                                    ),
                                    const Expanded(
                                        child: Center(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    )),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 41,
                        color: Colors.black,
                      )
                    ],
                  ))
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
