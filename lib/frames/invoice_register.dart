import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: InvoiceRegister(),
  ));
}

class InvoiceRegister extends StatelessWidget {
  const InvoiceRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('INVOICE REGISTER'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 25,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue.shade900)),
                        child: Center(
                            child: Text(
                          'Month and year',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1000),
                      child: Icon(
                        Icons.search,
                        color: Colors.blue.shade900,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: DataTable(
                        columnSpacing: 150,
                        headingRowHeight: 100,
                        border: TableBorder.all(),
                        columns: [
                          const DataColumn(
                              label: Text(
                            'DATE',
                            style: TextStyle(
                                color: Color.fromARGB(255, 7, 75, 134),
                                fontWeight: FontWeight.bold),
                          )),
                          const DataColumn(
                            label: Text(
                              'Load no:',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const DataColumn(
                              label: Text(
                            'Invoice\nAmount',
                            style: TextStyle(
                                color: Color.fromARGB(255, 7, 75, 134),
                                fontWeight: FontWeight.bold),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'Invoice Details',
                                    style: TextStyle(
                                      color: Colors.blue.shade900,
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 20.0,
                                  thickness: 3.0,
                                  color: Colors.blue,
                                  indent: 0.1,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'PRODUCT1',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.blue.shade900),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'VOLUME',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Divider(
                                              height: 30,
                                              color: Colors.black,
                                              indent: 50,
                                            ),
                                            Text(
                                              'DENSITY',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    const Divider(indent: 30),
                                    Column(
                                      children: [
                                        Text(
                                          'PRODUCT1',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.blue.shade900),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'VOLUME',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'DENSITY',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    const Divider(
                                      indent: 30,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'PRODUCT1',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.blue.shade900),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'VOLUME',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'DENSITY',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    const Divider(
                                      indent: 30,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'PRODUCT1',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.blue.shade900),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'VOLUME',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'DENSITY',
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                        ],
                        rows: List.generate(
                          31,
                          (index) => DataRow(cells: [
                            DataCell(Text('${index + 1}')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                            const DataCell(Text('')),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade500,
                          ),
                          child: const Center(
                            child: Text(
                              'UPLOAD INVOICE BILL[IP9]',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
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
