
import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f10_settlement_register/bank_mangersview.dart';
import 'package:flutter_frames/frames/searchpage.dart';

class Banks extends StatefulWidget {
  const Banks({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BanksState createState() => _BanksState();
}

class _BanksState extends State<Banks> {
  DateTime _currentDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _currentDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    // Format day and month to always have two digits
    String formattedDate =
        '${_currentDate.day.toString().padLeft(2, '0')}/${_currentDate.month.toString().padLeft(2, '0')}/${_currentDate.year}';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SETTLEMENT REGISTER',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 110, right: 110, top: 110),
                      child: Container(
                        width: 500,
                        height: 680,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 7, 75, 134),
                          ),
                        ),
                      ),
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => CcmsManagersview()),
                    //     );
                    //   },
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(left: 110, top: 70),
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(4),
                    //         border: Border.all(
                    //           color: const Color.fromARGB(255, 7, 75, 134),
                    //         ),
                    //       ),
                    //       child: Center(
                    //         child: Text(
                    //           "Manager's view",
                    //           style: TextStyle(
                    //             color: const Color.fromARGB(255, 10, 49, 80),
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //       width: 140,
                    //       height: 30,
                    //     ),
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
                      child: const Padding(
                        padding: EdgeInsets.only(left: 500, top: 75),
                        child: Icon(Icons.search),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 500, top: 65),
                    //   child: IconButton(
                    //     icon: Icon(
                    //       Icons.search,
                    //       color: Colors.blue.shade900,
                    //       size: 30,
                    //     ),
                    //     onPressed: () {
                    //       // Implement search functionality
                    //     },
                    //   ),
                    // ),
                    Positioned(
                      top: 75,
                      right: 110,
                      child: Container(
                        width: 60,
                        height: 29,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue.shade900,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "View",
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 160,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue.shade900,
                          ),
                        ),
                        height: 30,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Center(
                            child: Text(
                              formattedDate, // Displaying current date
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
      
                    Positioned(
                      top: 200,
                      left: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 110, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                DataTable(
                                  // ignore: deprecated_member_use
                                  dataRowHeight: 50,
                                  border: TableBorder.all(),
                                  columns: [
                                    const DataColumn(
                                        label: Text('       M. ID       ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 100, 33, 29)))),
                                    DataColumn(
                                        label: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text('     SETTLEMENT      ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      Colors.blue.shade900)),
                                        ),
                                        Container(
                                          height: 25,
                                          width: 170,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      Colors.blue.shade900)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8),
                                            child: Text('TIME:'),
                                          ),
                                        )
                                      ],
                                    )),
                                  ],
                                  rows: List.generate(
                                    5,
                                    (index) => const DataRow(
                                      cells: [
                                        DataCell(TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        )),
                                        DataCell(TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color.fromARGB(255, 138, 21, 13),
                                    ),
                                  ),
                                  height: 25,
                                  width: 40,
                                  child: const Center(
                                    child: Text(
                                      "[+]",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 7, 75, 134),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const Text(
                                  "Total Settlement:",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue.shade900)),
                                  width: 150,
                                  height: 30,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        style: TextStyle(
                                            color: Colors.red.shade700,
                                            fontWeight: FontWeight.bold),
                                        decoration: const InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text(
                                    "Statement:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue.shade900)),
                                  width: 150,
                                  height: 30,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        style: TextStyle(
                                          color: Colors.blue.shade700,
                                        ),
                                        decoration: const InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text(
                                    "Difference:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue.shade900)),
                                  width: 150,
                                  height: 30,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        style: TextStyle(
                                            color: Colors.red.shade700,
                                            fontWeight: FontWeight.bold),
                                        decoration: const InputDecoration(
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 40, top: 50),
                                  child: Text(
                                    "REASON:",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 199, 34, 22)),
                                  ),
                                ),
                                SizedBox(width: 2),
                                Padding(
                                  padding: EdgeInsets.only(top: 50),
                                  child: Text(
                                    "*optional",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                height: 40,
                                width: 300,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade900),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BankMangersview(),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 90, 158, 92),
                        borderRadius: BorderRadius.circular(5)),
                    height: 30,
                    width: 130,
                    child: const Center(
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
