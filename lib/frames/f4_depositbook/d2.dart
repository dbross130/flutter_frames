import 'package:flutter/material.dart';

class D2 extends StatelessWidget {
  const D2({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      
       Scaffold(
        appBar: AppBar(
          title: Text(
            'D2,',
            style: TextStyle(
                color: Colors.blue.shade900, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: DataTable(
                    dataRowMaxHeight: 100,
                    columnSpacing: 150,
                    headingTextStyle: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    border: TableBorder.all(),
                    columns: const [
                      DataColumn(
                        label: Padding(
                          padding: EdgeInsets.only(left: 14, right: 8),
                          child: Text('CASH'),
                        ),
                      ),
                      DataColumn(
                        label: Padding(
                          padding: EdgeInsets.only(left: 18, right: 8),
                          child: Text('COIN'),
                        ),
                      ),
                      DataColumn(
                          label: Padding(
                        padding: EdgeInsets.only(left: 22, right: 8),
                        child: Text('CARD'),
                      )),
                      DataColumn(
                          label: Padding(
                        padding: EdgeInsets.only(left: 19, right: 8),
                        child: Text('SCAN'),
                      )),
                      DataColumn(
                          label: Padding(
                        padding: EdgeInsets.only(left: 24, right: 8),
                        child: Text('PPC'),
                      )),
                      DataColumn(
                          label: Padding(
                        padding: EdgeInsets.only(left: 15, right: 8),
                        child: Text('CREDIT'),
                      )),
                      DataColumn(
                          label: Padding(
                        padding: EdgeInsets.only(left: 24, right: 8),
                        child: Text('CCMS'),
                      )),
                      DataColumn(
                          label: Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Text('MLA COUPON'),
                      )),
                      DataColumn(
                          label: Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Text('EXTRA REWARD'),
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        //cash
                        DataCell(Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade900)),
                          child: const TextField(),
                        )),
                        DataCell(//coin
                            Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade900)),
                          child: const TextField(),
                        )),
                        DataCell(//card
                            Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue.shade900)),
                                child: const TextField(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.elliptical(8, 8)),
                                    border: Border.all(
                                        width: 2, color: Colors.blue.shade900)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'NO OF CARDS',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                        DataCell(//scan
                            Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue.shade900)),
                                child: const TextField(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.elliptical(8, 8)),
                                    border: Border.all(
                                        width: 2, color: Colors.blue.shade900)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'NO OF SCAN',
                                        hintStyle: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                        DataCell(//ppc
                            Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue.shade900)),
                                child: const TextField(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.elliptical(8, 8)),
                                    border: Border.all(
                                        width: 2, color: Colors.blue.shade900)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'NO OF PPC',
                                        hintStyle: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                        DataCell(//cr
                            Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue.shade900)),
                                child: const TextField(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.elliptical(8, 8)),
                                    border: Border.all(
                                        width: 2, color: Colors.blue.shade900)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'NO OF CREDIT',
                                        hintStyle: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                        DataCell(//ccms
                            Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue.shade900)),
                                child: const TextField(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.elliptical(8, 8)),
                                    border: Border.all(
                                        width: 2, color: Colors.blue.shade900)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'NO OF CCMS',
                                        hintStyle: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                        DataCell(//mla coupon
                            Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue.shade900)),
                                child: const TextField(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.elliptical(8, 8)),
                                    border: Border.all(
                                        width: 2, color: Colors.blue.shade900)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'NO OF REWARD',
                                        hintStyle: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                        DataCell(//extra reward
                            Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.blue.shade900)),
                                child: const TextField(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.elliptical(8, 8)),
                                    border: Border.all(
                                        width: 2, color: Colors.blue.shade900)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        hintText: 'NO OF COUPONS',
                                        hintStyle: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                      ]),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 152, 199, 154),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                        )),
                    child: Center(
                        child: Text(
                      "Ok",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    width: 150,
                    height: 30,
                  ),
                ),
              )
            ],
          ),
        ),
  
    );
  }
}
