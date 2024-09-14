import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f4_depositbook/deposit_book_screen.dart';
import 'package:intl/intl.dart';

class DepositBook extends StatefulWidget {
  const DepositBook({super.key});

  @override
  State<DepositBook> createState() => _DepositBookState();
}

class _DepositBookState extends State<DepositBook> {
  List<String> _list = [];
  List<String> _Name = [];

  void _addList() {
    setState(() {
      _list.add('D${_list.length + 1}');
    });
  }

  void _addName() {
    setState(() {
      _Name.add('CA NAME ${_Name.length + 1}');
    });
  }

  void _navigateToDetailPage(String caName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DepositbookScreen(caName: caName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'DEPOSIT BOOK',
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
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade900),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.green,
                          ),
                          child: DropdownButton(
                            underline: Container(),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: 30,
                            ),
                            hint: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                'SHIFT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            items: [],
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue.shade900,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              DateFormat('dd-MM-yyyy').format(DateTime.now()),
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: _Name.map((caname) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () => _navigateToDetailPage(caname),
                              child: Container(
                                height: 35,
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.blue.shade100,
                                ),
                                child: Center(
                                  child: Text(
                                    caname,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: GestureDetector(
                          onTap: _addName,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red.shade900,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '[+]',
                                style: TextStyle(
                                  color: Colors.red.shade900,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: _list.map((label) {
                      return Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          height: 35,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue.shade900),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              label,
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: _addList,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red.shade900,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '[+]',
                            style: TextStyle(
                              color: Colors.red.shade900,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
