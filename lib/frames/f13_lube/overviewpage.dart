import 'package:flutter/material.dart';

class Overviewpage extends StatelessWidget {
  const Overviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MONTH',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 50, bottom: 50),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    verticalDirection: VerticalDirection.down,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DataTable(
                        headingRowHeight: 100,
                        headingTextStyle: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        border: TableBorder.all(),
                        columns: [
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'DATE',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'CATEGORY1 \nVOLUME1',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'CATEGORY1 \nVOLUME2',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'CATEGORY2 \nVOLUME2',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'CATEGORY3 \nVOLUME1',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'CATEGORY3 \nVOLUME2',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'CATEGORY3 \nVOLUME3',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'CATEGORY3 \nVOLUME4',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'CATEGORY4 \nVOLUME1',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'CATEGORY5 \nVOLUME1',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                          DataColumn(
                              label: RotatedBox(
                            quarterTurns: 3,
                            child: RichText(
                              text: TextSpan(
                                  text: 'CATEGORY6 \nVOLUME1',
                                  style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          )),
                        ],
                        rows: [
                          const DataRow(cells: [
                            DataCell(Text('1')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('2')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('3')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('4')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('5')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('6')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('7')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('8')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('9')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('10')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('11')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('12')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('13')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('14')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('15')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('16')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('17')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('18')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('19')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('20')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('21')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('22')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('23')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('24')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('25')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('26')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('27')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('28')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('29')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('30')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          const DataRow(cells: [
                            DataCell(Text('31')),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                            DataCell(TextField()),
                          ]),
                          DataRow(cells: [
                            DataCell(Text(
                              'T',
                              style: TextStyle(
                                  color: Colors.red.shade800,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )),
                            const DataCell(TextField()),
                            const DataCell(TextField()),
                            const DataCell(TextField()),
                            const DataCell(TextField()),
                            const DataCell(TextField()),
                            const DataCell(TextField()),
                            const DataCell(TextField()),
                            const DataCell(TextField()),
                            const DataCell(TextField()),
                            const DataCell(TextField()),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
