import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DispensaryunitsPage extends StatelessWidget {
  const DispensaryunitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'DISPENSARYUNITS COMPLAINTS',
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1040, top: 30),
                    child: Container(
                      height: 25,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Center(
                        child: Text(
                          DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: DataTable(
                      border: TableBorder.all(),
                      columns: const [
                        DataColumn(
                            label: Text(
                          'MACHINE NO',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'NOZZLE ID',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'COMPLAINT DESCRIPTION',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'COMPLAINT NO ON WEBSITE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'MAINTENANCE REQUIRED',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        )),
                        DataColumn(
                            label: Text(
                          'MAINTENANCE STATUS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ))
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: DropdownButton(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue.shade900,
                                size: 40,
                              ),
                              items: [],
                              onChanged: (value) {},
                            ),
                          )),
                          DataCell(Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: DropdownButton(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.blue.shade900,
                                size: 40,
                              ),
                              items: [],
                              onChanged: (value) {},
                            ),
                          )),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                        ]),
                        DataRow(cells: [
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                        ]),
                        DataRow(cells: [
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                        ]),
                        DataRow(cells: [
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                        ]),
                        DataRow(cells: [
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                          DataCell(TextField()),
                        ]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.red.shade700,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'DELETE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'SUBMIT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
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
        ),
      ),
    );
  }
}
