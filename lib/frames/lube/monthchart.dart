import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/lube/overviewpage.dart';

class Monthchart extends StatelessWidget {
  const Monthchart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Month Chart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red.shade900,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 20, bottom: 40),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                      TableCell(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 30, bottom: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  size: 40,
                                  color: Colors.blue.shade500,
                                ),
                                Container(
                                  width: 200,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: Colors.blue.shade500,
                                          width: 2)),
                                  child: Center(
                                    child: Text(
                                      'Year',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue.shade500,fontSize: 12),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 40,
                                  color: Colors.blue.shade500,
                                )
                              ],
                            ),
                          ),
                          Table(
                            border: TableBorder.all(),
                            children: [
                              TableRow(children: [
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'JAN',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'FEB',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'MAR',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'APR',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                              ]),
                              TableRow(children: [
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'MAY',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'JUN',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'JUL',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'AUG',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                              ]),
                              TableRow(children: [
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'SEP',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'OCT',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'NOV',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                                TableCell(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Overviewpage())),
                                    child: const Text(
                                      'DEC',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                )),
                              ])
                            ],
                          )
                        ],
                      ))
                    ])
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
