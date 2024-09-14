import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/searchpage.dart';

class BatteryWaterScreen extends StatefulWidget {
  @override
  State<BatteryWaterScreen> createState() => _BatteryWaterScreenState();
}

class _BatteryWaterScreenState extends State<BatteryWaterScreen> {
  DateTime _selectedDate = DateTime.now();
  List<List<TextEditingController>> _controllers = List.generate(
      31, (index) => List.generate(5, (i) => TextEditingController()));

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  void dispose() {
    for (var rowControllers in _controllers) {
      for (var controller in rowControllers) {
        controller.dispose();
      }
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BATTERY WATER',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  GestureDetector(
                    onTap: () => _selectDate(context),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue.shade900),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'MONTH & YEAR',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 1020),
                  //   child: IconButton(
                  //     icon: Icon(Icons.search, color: Colors.blue.shade900),
                  //     onPressed: () {
                  //       // Implement search functionality
                  //     },
                  //   ),
                  // ),
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
                                searchpage(selectedDate: picked),
                          ),
                        );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1020),
                      child: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 20,
                    border: TableBorder.all(),
                    columns: <DataColumn>[
                      DataColumn(
                        label: SizedBox(
                          width: 80,
                          child: Center(
                            child: Text(
                              'DATE',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: 200,
                          child: Center(
                            child: Text(
                              'BATTERY WATER \nVOLUME',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: 200,
                          child: Center(
                            child: Text(
                              "OPENING STOCK \n(QUANTITY)",
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: 200,
                          child: Center(
                            child: Text(
                              "PURCHASE \n(QUANTITY)",
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: 200,
                          child: Center(
                            child: Text(
                              "SALE \n(QUANTITY)",
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: 200,
                          child: Center(
                            child: Text(
                              "CLOSING STOCK \n(QUANTITY)",
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                    rows: [
                      // Blank row after headings
                      DataRow(cells: [
                        DataCell(Container()), // Blank cell
                        DataCell(
                          Center(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ]),
                      ...List.generate(31, (index) {
                        return DataRow(cells: [
                          DataCell(
                            SizedBox(
                              width: 80,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 100),
                                child: TextField(
                                  controller: _controllers[index][0],
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 200,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 100),
                                child: TextField(
                                  controller: _controllers[index][0],
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 200,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 100),
                                child: TextField(
                                  controller: _controllers[index][1],
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 200,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 100),
                                child: TextField(
                                  controller: _controllers[index][2],
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 200,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 100),
                                child: TextField(
                                  controller: _controllers[index][3],
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 200,
                              child: ConstrainedBox(
                                constraints: BoxConstraints(maxHeight: 100),
                                child: TextField(
                                  controller: _controllers[index][4],
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]);
                      }),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
