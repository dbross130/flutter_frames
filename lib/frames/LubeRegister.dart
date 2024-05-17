import 'package:flutter/material.dart';

class LubeRegister extends StatelessWidget {
  const LubeRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LUBE REGISTER'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: DataTable(
                      columnSpacing: 50,
                      headingRowHeight: 100,
                      border: TableBorder.all(),
                      columns: [
                        const DataColumn(
                            label: Text(
                          'SR.\nNO',
                          style: TextStyle(
                              color: Color.fromARGB(255, 7, 75, 134),
                              fontWeight: FontWeight.bold),
                        )),
                        const DataColumn(
                            label: Text(
                          'ITEM',
                          style: TextStyle(
                              color: Color.fromARGB(255, 7, 75, 134),
                              fontWeight: FontWeight.bold),
                        )),
                        const DataColumn(
                            label: Text(
                          'OPENING STOCK\n(QUANTITY)',
                          style: TextStyle(
                              color: Color.fromARGB(255, 7, 75, 134),
                              fontWeight: FontWeight.bold),
                        )),
                        DataColumn(
                            label: Text(
                          'PURCHASE\n(QUANTITY)',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'PURCHASE\n(QUANTITY)',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'SALE\n(QUANTITY)',
                          style: TextStyle(
                            color: Colors.blue.shade900,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'CLOSING STOCK\n(QUANTITY)',
                          style: TextStyle(
                            color: Colors.blue.shade900,
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
                          const DataCell(Text('')),
                          const DataCell(Text('')),
                          const DataCell(Text('')),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 600),
                    child: Container(
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade700,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.blue.shade900)),
                      child: Center(
                        child: Text(
                          'MONTHLY OVERVIEW',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
