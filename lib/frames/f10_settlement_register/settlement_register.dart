// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, sort_child_properties_last, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_frames/frames/f10_settlement_register/banks.dart';
import 'package:flutter_frames/frames/f10_settlement_register/ccms.dart';
import 'package:flutter_frames/frames/f10_settlement_register/qr_manager_view.dart';

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.redAccent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    double step = 5.0;

    for (double i = 0; i < size.width; i += step * 2) {
      canvas.drawLine(Offset(i, 0), Offset(i + step, 0), paint);
    }

    for (double i = 0; i < size.height; i += step * 2) {
      canvas.drawLine(
          Offset(size.width, i), Offset(size.width, i + step), paint);
    }

    for (double i = size.width; i > 0; i -= step * 2) {
      canvas.drawLine(
          Offset(i, size.height), Offset(i - step, size.height), paint);
    }

    for (double i = size.height; i > 0; i -= step * 2) {
      canvas.drawLine(Offset(0, i), Offset(0, i - step), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class SettlementRegister extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SettlementRegisterState createState() => _SettlementRegisterState();
}

class _SettlementRegisterState extends State<SettlementRegister> {
  String? _selectedBank;

  void _navigateToBank(BuildContext context, String bankName) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              Banks()), // Change BankPage to the desired destination page
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SETTLEMENT REGISTER',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 7, 75, 134),
                  ),
                ),
                height: 400,
                width: 700,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ccms())),
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'CCMS',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: DropdownButton<String>(
                          value: _selectedBank,
                          hint: Text('Bank'),
                          items: <String>[
                            'Bank 1',
                            'Bank 2',
                            'Bank 3',
                            'Bank 4'
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Center(child: Text(value)),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedBank = newValue!;
                            });
                            if (_selectedBank != null) {
                              _navigateToBank(context, _selectedBank!);
                            }
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => QrScan())),
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'QR - SCAN',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                    ),
                    Text(
                      "TOTAL SETTLEMENT AMOUNT OF ALL BANKS",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomPaint(
                        size: Size(310, 40),
                        painter: DottedBorderPainter(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
