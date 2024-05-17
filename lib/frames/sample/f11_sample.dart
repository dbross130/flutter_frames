import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CCMSRegisterScreen(),
  ));
}

class CCMSRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'CCMS REGISTER',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 25,
                      width: 150,
                      decoration: BoxDecoration(border: Border.all()),
                      child: Center(child: Text('Month and year')),
                    ),
                  ),
                  Icon(Icons.search)
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade900)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: DataTable(
                          border: TableBorder.all(),
                          columns: const [
                            DataColumn(
                                label: Text(
                              'DATE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'COMPANY NAME',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'CONTACT NO:',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'QANTITY',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'RATE',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'AMOUNT',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'TRANSACTION',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                                label: Text(
                              'TOTAL',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 75, 134),
                                  fontWeight: FontWeight.bold),
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
                              const DataCell(Text('')),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, bottom: 25),
                          child: Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'UPLOAD PHOTO[IP5]',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25, left: 190),
                          child: Text(
                            'TOTAL MONTLY CCMS:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 25,
                          ),
                          child: Container(
                            width: 150,
                            height: 30,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                              child: Text(
                                'CAL3',
                                style: TextStyle(
                                  color: Colors.red.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue.shade900),
                          minimumSize: MaterialStatePropertyAll(Size(100, 30))),
                      onPressed: () {},
                      child: Text(
                        'EDIT',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green.shade900),
                          minimumSize: MaterialStatePropertyAll(Size(100, 30))),
                      onPressed: () {},
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
