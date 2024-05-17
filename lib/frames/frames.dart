import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/LubeRegister.dart';
import 'package:flutter_frames/frames/ReadingBook.dart';
import 'package:flutter_frames/frames/ca_worksheet.dart';
import 'package:flutter_frames/frames/ccms_register.dart';
import 'package:flutter_frames/frames/invoice_register.dart';
import 'package:flutter_frames/frames/ppc/ppc_book.dart';
import 'package:flutter_frames/frames/test_register.dart';

class FramesPage extends StatelessWidget {
  const FramesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FRAMES PAGE'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 80,
          right: 50,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade900)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReadingBook(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F1-READING BOOK',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CaWorksheet(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F3-CA WORKSHEET',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TestRegister(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F5-TEST REGISTER',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PPCBOOK(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F7-PPC BOOK',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CCMSRegister(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F9-CCMS REGISTER',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InvoiceRegister(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F11-INVOICE REGISTER',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LubeRegister(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F13-LUBE REGISTER',
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade900)),
                          child: Center(
                              child: Text(
                            'F15-LPG REGISTER',
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade900)),
                          child: Center(
                              child: Text(
                            'F17-SALARY REGISTER',
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue.shade900)),
                          child: Center(
                              child: Text(
                            'F19-SHORT OR EXCESS',
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
