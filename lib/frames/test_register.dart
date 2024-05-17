import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TestRegister extends StatelessWidget {
  const TestRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'TEST REGISTER',
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                      width: 130,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue.shade900)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade900),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 450),
                    child: Container(
                      height: 20,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.blue.shade900)),
                      child: const Center(
                        child: Text(
                          'VIEW',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.blue.shade900,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade900)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(5)),
                                child: DropdownButton(
                                  dropdownColor: Colors.blue.shade100,
                                  isExpanded: true,
                                  hint: const Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                      '[IP1] SHIFT',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
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
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(border: Border.all()),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'TIME:',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 12),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: DataTable(
                            dataRowMaxHeight: 200,
                            headingTextStyle: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                            border: TableBorder.all(),
                            columns: const [
                              DataColumn(label: Text('  MACHINE NO:  ')),
                              DataColumn(label: Text('TEST')),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 250,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.blue.shade100,
                                                border: Border.all(
                                                    color:
                                                        Colors.blue.shade900),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'MACHINE 1',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blue.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'N.ID',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.red.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'PDT',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blue.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.green.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blue.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.indigo.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blue.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.yellow.shade800),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.blue.shade900,
                                          )),
                                          height: 25,
                                          width: 100,
                                          child: const Center(
                                            child: Text(
                                              'IP2',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.blue.shade900,
                                          )),
                                          height: 25,
                                          width: 100,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.blue.shade900,
                                          )),
                                          height: 25,
                                          width: 100,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.blue.shade900,
                                          )),
                                          height: 25,
                                          width: 100,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                              ]),
                              DataRow(cells: [
                                DataCell(Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 250,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.blue.shade100,
                                                border: Border.all(
                                                    color:
                                                        Colors.blue.shade900),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'MACHINE 2',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blue.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'N.ID',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.red.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'PDT',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blue.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.green.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blue.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.indigo.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blue.shade900),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.yellow.shade800),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(30)),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                                DataCell(Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.blue.shade900,
                                          )),
                                          height: 25,
                                          width: 100,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.blue.shade900,
                                          )),
                                          height: 25,
                                          width: 100,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.blue.shade900,
                                          )),
                                          height: 25,
                                          width: 100,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.blue.shade900,
                                          )),
                                          height: 25,
                                          width: 100,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70, top: 20),
                        child: Row(
                          children: [
                            Text(
                              'TOTAL TEST:',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.red.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.red.shade700),
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'PDT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                              child: const Center(
                                child: Text(
                                  'CAL1',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.red.shade700),
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170, bottom: 40),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.red.shade700),
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'PDT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                              child: const Center(
                                child: Text(
                                  'CAL1',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.red.shade700),
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.green.shade900)),
                    onPressed: () {},
                    child: const Text('SAVE')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
