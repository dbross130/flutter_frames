import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Leaveregister extends StatefulWidget {
  const Leaveregister({super.key});

  @override
  State<Leaveregister> createState() => _LeaveregisterState();
}

class _LeaveregisterState extends State<Leaveregister> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Leave Register',
          style: TextStyle(
            color: Colors.red.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade100,
                    border: Border.all(color: Colors.blue.shade900, width: 1)),
                child: TableCalendar(
                  firstDay: DateTime(2023, 1, 1),
                  lastDay: DateTime(2040, 12, 31),
                  focusedDay: _focusedDay,
                  calendarFormat: _calendarFormat,
                  onFormatChanged: (format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  calendarStyle: const CalendarStyle(
                    todayTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.blue,
                    ),
                    selectedTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    weekendStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  headerStyle: const HeaderStyle(
                    titleCentered: true,
                    formatButtonVisible: false,
                  ),
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  locale: 'en_US', // Replace with your locale
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.green.shade700,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                    onPressed: () {
                      _showLeaveRequestDialog(context);
                    },
                    child: const Center(
                      child: Text(
                        'REQUEST - LEAVE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showLeaveRequestDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // elevation: 50,
          title: Center(
            child: Text(
              'Leave Request',
              style: TextStyle(
                  color: Colors.red.shade900, fontWeight: FontWeight.bold),
            ),
          ),
          content: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 500),
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
                  padding: const EdgeInsets.only(right: 550, top: 20),
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
                  padding: const EdgeInsets.only(right: 520, top: 20),
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
              ],
            ),
          ),
          actions: <Widget>[
            // TextButton(
            //   onPressed: () {
            //     Navigator.of(context).pop(); // Close the dialog
            //   },
            //   child: Text('Cancel'),
            // ),
            TextButton(
              onPressed: () {
                // Add your leave request logic here
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Container(
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.shade600,
                  ),
                  child: const Center(
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        );
      },
    );
  }
}
