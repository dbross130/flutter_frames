import 'package:flutter/material.dart';

class ProductPriceRegister extends StatelessWidget {
  const ProductPriceRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PRODUCT & PRICE REGISTER',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: CustomizebleTable(headers: const [
                  'G S T - G O O D S',
                  'N O N - G S T - G O O D S',
                ], itemcount: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomizebleTable extends StatelessWidget {
  final List<String> headers;
  final int itemcount;
  CustomizebleTable({required this.headers, required this.itemcount});
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const {
        0: FixedColumnWidth(600),
        1: FixedColumnWidth(500),
      },
      children: [
        TableRow(children: [
          TableCell(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                )),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 600,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.blue.shade100,
                      ),
                      child: Center(
                        child: Text(
                          headers[0],
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'PRODUCT',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Container(
                    width: 1,
                    height: 40,
                    color: Colors.black,
                  ),
                  Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'CATEGORY',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Container(
                    width: 1,
                    height: 40,
                    color: Colors.black,
                  ),
                  Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'VOLUME',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Container(
                    width: 1,
                    height: 40,
                    color: Colors.black,
                  ),
                  Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'MRP',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Container(
                    width: 1,
                    height: 40,
                    color: Colors.black,
                  ),
                  Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          'RATE',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              )
            ],
          )),
          TableCell(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black),
                )),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      width: 600,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.blue.shade100,
                      ),
                      child: Center(
                        child: Text(
                          headers[1],
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Center(
                    child: Text(
                      'PRODUCT',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                  Container(
                    width: 1,
                    height: 40,
                    color: Colors.black,
                  ),
                  Expanded(
                      child: Center(
                    child: Text(
                      'RATE',
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                ],
              )
            ],
          )),
        ]),
        ...List<TableRow>.generate(itemcount, (index) {
          List<dynamic> rowData = [
            '',
            '',
          ];
          return TableRow(children: [
            TableCell(
                child: Row(
              children: [
                Expanded(
                    child: Center(
                  child: rowData[0] = const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                )),
                Container(
                  width: 1,
                  height: 50,
                  color: Colors.black,
                ),
                Expanded(
                  child: Center(
                    child: rowData[0] = const TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: Colors.black,
                ),
                Expanded(
                  child: Center(
                    child: rowData[0] = const TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: Colors.black,
                ),
                Expanded(
                  child: Center(
                    child: rowData[0] = const TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: Colors.black,
                ),
                Expanded(
                  child: Center(
                    child: rowData[0] = const TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            )),
            TableCell(
                child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: rowData[1] = const TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: Colors.black,
                ),
                Expanded(
                  child: Center(
                    child: rowData[1] = const TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ))
          ]);
        })
      ],
    );
  }
}
