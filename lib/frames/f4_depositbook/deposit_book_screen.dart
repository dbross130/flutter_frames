
import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f4_depositbook/d1.dart';
import 'package:flutter_frames/frames/f4_depositbook/d2.dart';
import 'package:flutter_frames/frames/f4_depositbook/d3.dart';
import 'package:flutter_frames/frames/f4_depositbook/d4.dart';
import 'package:flutter_frames/frames/f4_depositbook/total_deposit.dart';

class DepositbookScreen extends StatefulWidget {
  final caName;
  const DepositbookScreen({required this.caName});

  @override
  State<DepositbookScreen> createState() => _DepositbookScreenState();
}

class _DepositbookScreenState extends State<DepositbookScreen> {
  List<Widget> caNameContainers = [];
  DateTime _currentDate = DateTime.now();
  @override
  void initState() {
    super.initState();
    _currentDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate =
        '${_currentDate.day.toString().padLeft(2, '0')}/${_currentDate.month.toString().padLeft(2, '0')}/${_currentDate.year}';
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
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Row(
                  children: [
                    SizedBox(width: 860),
                    Icon(Icons.more_vert, color: Colors.black),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 900,
                      height: 670,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 7, 75, 134)),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 610, top: 50),
                            child: Container(
                              width: 130,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 7, 75, 134)),
                              ),
                              child: Center(
                                child: Text(
                                  formattedDate,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 610, top: 20),
                            child: Container(
                              width: 130,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.green,
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 7, 75, 134)),
                              ),
                              child: Center(
                                child: DropdownButton<String>(
                                  icon: const Icon(Icons.arrow_drop_down,
                                      color: Colors.white),
                                  hint: const Text(
                                    'SHIFT',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onChanged: (String? value) {},
                                  items: <String>['Day', 'Night']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: const TextStyle(color: Colors.black),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              const SizedBox(width: 25),
                              for (var i = 0; i < 4; i++)
                                Padding(
                                  padding: const EdgeInsets.only(left: 53),
                                  child: Container(
                                    height: 40,
                                    width: 130,
                                    margin: const EdgeInsets.only(right: 13),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 170, 182, 192)),
                                      color: Colors.blue[100],
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'CA NAME',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    caNameContainers.add(
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 53),
                                        child: Container(
                                          height: 40,
                                          width: 130,
                                          margin: const EdgeInsets.only(right: 13),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 170, 182, 192)),
                                            color: Colors.blue[100],
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'CA NAME',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: const Color.fromARGB(255, 192, 23, 11),
                                    )),
                                    child: const Center(
                                        child: Text("[+]",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 192, 23, 11),
                                                fontWeight: FontWeight.bold))),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              for (var i = 0; i < 4; i++)
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const D1())),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Container(
                                      height: 40,
                                      width: 70,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      margin: const EdgeInsets.only(right: 50),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 7, 75, 134)),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'D1',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 7, 75, 134),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              for (var i = 0; i < 4; i++)
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const D2())),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Container(
                                      height: 40,
                                      width: 70,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      margin: const EdgeInsets.only(right: 50),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 7, 75, 134)),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'D2',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 7, 75, 134),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              for (var i = 0; i < 4; i++)
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const D3())),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Container(
                                      height: 40,
                                      width: 70,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      margin: const EdgeInsets.only(right: 50),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 7, 75, 134)),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'D3',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 7, 75, 134),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              for (var i = 0; i < 4; i++)
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const D4())),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Container(
                                      height: 40,
                                      width: 70,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      margin: const EdgeInsets.only(right: 50),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 7, 75, 134)),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'D4',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 7, 75, 134),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    caNameContainers.add(
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 53),
                                        child: Container(
                                          height: 40,
                                          width: 130,
                                          margin: const EdgeInsets.only(right: 13),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 170, 182, 192)),
                                            color: Colors.blue[100],
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'd+1',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 625),
                                  child: Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: const Color.fromARGB(255, 192, 23, 11),
                                    )),
                                    child: const Center(
                                        child: Text("[+]",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 192, 23, 11),
                                                fontWeight: FontWeight.bold))),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 3),
                              for (var i = 0; i < 4; i++)
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TotalDeposit()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 62),
                                    child: Container(
                                      height: 40,
                                      width: 130,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      margin: const EdgeInsets.only(right: 13),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blue.shade900),
                                      child: const Center(
                                        child: Text(
                                          'TOTAL DEPOSIT',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const SizedBox(
                      width: 340,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          borderRadius: BorderRadius.circular(5)),
                      height: 30,
                      width: 130,
                      child: const Center(
                          child: Text("Edit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 90, 158, 92),
                          borderRadius: BorderRadius.circular(5)),
                      height: 30,
                      width: 130,
                      child: const Center(
                          child: Text("Submit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
