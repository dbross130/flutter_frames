import 'package:flutter/material.dart';

class LeaveRequest extends StatelessWidget {
  const LeaveRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'LEAVE REQUEST',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 300,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.blue.shade900,
          )),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 100, top: 30, bottom: 20, right: 20),
                  child: Row(
                    children: [
                      const Text(
                        'NAME:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue.shade900,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            DropdownButton(
                              underline: Container(),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                                size: 30,
                              ),
                              items: const [],
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'START DATE:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue.shade900,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 20),
                  child: Row(
                    children: [
                      const Text(
                        'DESIGNATION:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue.shade900,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          )),
                      const SizedBox(
                        width: 25,
                      ),
                      const Text(
                        'END DATE:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue.shade900,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 20, right: 20),
                  child: Row(
                    children: [
                      const Text(
                        'REASON:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 30,
                          width: 500,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue.shade900,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.green.shade500,
                      borderRadius: BorderRadius.circular(6)),
                  child: const Center(
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
