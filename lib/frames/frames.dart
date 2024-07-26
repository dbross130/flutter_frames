import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/Daybook/daybook.dart';
import 'package:flutter_frames/frames/Gstpage/gstbillbook.dart';
import 'package:flutter_frames/frames/Sale%20cash%20comparison/sale_cash.dart';
import 'package:flutter_frames/frames/complaintregister/complaint_register.dart';
import 'package:flutter_frames/frames/expensebook/expensebook.dart';
import 'package:flutter_frames/frames/leave/leaveregister.dart';
import 'package:flutter_frames/frames/lube/LubeRegister.dart';
import 'package:flutter_frames/frames/maintenanceregister/maintenancepage.dart';
import 'package:flutter_frames/frames/managers%20monthly%20sales/mangers_monthly_salesPage.dart';
import 'package:flutter_frames/frames/monthlysalary/monthly_salary_register.dart';
import 'package:flutter_frames/frames/product_price_register/product_price_register.dart';
import 'package:flutter_frames/frames/reading_book/ReadingBook.dart';
import 'package:flutter_frames/frames/salary/SalaryRegister.dart';

import 'package:flutter_frames/frames/shortExcess/ShortOrExcess.dart';
import 'package:flutter_frames/frames/caworksheet/ca_worksheet.dart';
import 'package:flutter_frames/frames/ccms/ccms_register.dart';
import 'package:flutter_frames/frames/invoice_reg/invoice_register.dart';
import 'package:flutter_frames/frames/lpg/LpgRegister.dart';
import 'package:flutter_frames/frames/ppc/ppc_book.dart';
import 'package:flutter_frames/frames/testregister/test_register.dart';

class FramesPage extends StatelessWidget {
  const FramesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'FRAMES PAGE',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
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
                                builder: (context) => const ReadingBook(),
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
                                builder: (context) => const CaWorksheet(),
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
                                builder: (context) => const TestRegister(),
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
                                builder: (context) => const CCMSRegister(),
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
                                builder: (context) => const InvoiceRegister(),
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
                                builder: (context) => const LubeRegister(),
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
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LpgRegister(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SalaryRegister(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ShortOrExcess(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Expensebook(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F21-EXPENSE BOOK',
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
                                builder: (context) => const Leaveregister(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F22-LEAVE REGISTER',
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
                                builder: (context) => const MonthlySalaryRegister(),
                              )),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                'F23-MONTHLY SALARYT REGISTER',
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DayBook(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F24-DAY BOOK',
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
                                builder: (context) => const SaleCash(),
                              )),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'F25-SALES CASH COMPARISON',
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
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
                                builder: (context) => const MangersMonthlySalespage(),
                              )),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'F26-MANAGERS  MONTHLY SALES',
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
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
                                builder: (context) => const Gstbillbook(),
                              )),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'F27-GST BILL BOOK',
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
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
                                builder: (context) => const Maintenancepage(),
                              )),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'F28-MAINTANENCE REGISTER',
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
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
                                builder: (context) => const ComplaintRegister(),
                              )),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'F29-COMPLAINT REGISTER',
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
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
                                builder: (context) => const ProductPriceRegister(),
                              )),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'F30-PRODUCT & PRICE REGISTER',
                                style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            )),
                          ),
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
