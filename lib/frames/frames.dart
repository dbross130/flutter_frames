import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f10_settlement_register/settlement_register.dart';
import 'package:flutter_frames/frames/f12_attendence_reg/attendance_register.dart';
import 'package:flutter_frames/frames/f14_battery_water/battery_water_screen.dart';
import 'package:flutter_frames/frames/f16_wrong_fuel_reg/wrong_fuel_register.dart';
import 'package:flutter_frames/frames/f18_advance_reg/advance_register_screen.dart';
import 'package:flutter_frames/frames/f20_log_book/log_book.dart';
import 'package:flutter_frames/frames/f24_Daybook/daybook.dart';
import 'package:flutter_frames/frames/f27_Gstpage/gstbillbook.dart';
import 'package:flutter_frames/frames/f25_Sale%20cash%20comparison/sale_cash.dart';
import 'package:flutter_frames/frames/f2_dsr/dsr_screen.dart';
import 'package:flutter_frames/frames/f32_biodata_idproof/biodata_idproof.dart';
import 'package:flutter_frames/frames/f29_complaintregister/complaint_register.dart';
import 'package:flutter_frames/frames/f21_expensebook/expensebook.dart';
import 'package:flutter_frames/frames/f34_insuranceregister/insurance_register.dart';
import 'package:flutter_frames/frames/f22_leave_reg/leaveregister.dart';
import 'package:flutter_frames/frames/f13_lube/LubeRegister.dart';
import 'package:flutter_frames/frames/f28_maintenanceregister/maintenancepage.dart';
import 'package:flutter_frames/frames/f26_managers%20monthly%20sales/mangers_monthly_salesPage.dart';
import 'package:flutter_frames/frames/f23_monthlysalary_reg/monthly_salary_register.dart';
import 'package:flutter_frames/frames/f33_pf_esi/pf_esi.dart';
import 'package:flutter_frames/frames/f30_product_price_register/product_price_register.dart';
import 'package:flutter_frames/frames/f35_purchase_register/purchase_register.dart';
import 'package:flutter_frames/frames/f1_reading_book/ReadingBook.dart';
import 'package:flutter_frames/frames/f17_salary.dart/SalaryRegister.dart';
import 'package:flutter_frames/frames/f31_salesRegister/sales_frst.dart';
import 'package:flutter_frames/frames/f19_shortExcess/ShortOrExcess.dart';
import 'package:flutter_frames/frames/f3_caworksheet/ca_worksheet.dart';
import 'package:flutter_frames/frames/f4_depositbook/deposit_book.dart';
import 'package:flutter_frames/frames/f6_density_reg/density_register.dart';
import 'package:flutter_frames/frames/f8_creditcustomer_page/cr_customers.dart';
import 'package:flutter_frames/frames/f9_ccms/ccms_register.dart';
import 'package:flutter_frames/frames/f11_invoice_reg/invoice_register.dart';
import 'package:flutter_frames/frames/f15_lpg/LpgRegister.dart';
import 'package:flutter_frames/frames/f7_ppc/ppc_book.dart';
import 'package:flutter_frames/frames/f5_testregister/test_register.dart';

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
                                builder: (context) => const DsrScreen(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F2-DSR',
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
                                builder: (context) => const DepositBook(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F4-DEPOSIT BOOK',
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
                                builder: (context) => DensityRegister(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F6-DENSITY REGISTER',
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
                                builder: (context) => CreditCustomersPage(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F8-CREDIT CUSTOMER PAGE',
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
                                builder: (context) => SettlementRegister(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F10-SETTLEMENT REGISTER',
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
                                builder: (context) =>
                                    AttendanceRegisterScreen(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F12-ATTENDENCE REGISTER',
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
                                builder: (context) => BatteryWaterScreen(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F14-BATERY WATER',
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
                                builder: (context) => WrongFuelRegister(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F16-WRONG FUEL REGISTER',
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
                                builder: (context) => AdvanceRegisterScreen(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F18-ADVANCE REGISTER',
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
                                builder: (context) => LogBook(),
                              )),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Text(
                              'F20-LOG BOOK',
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
                                builder: (context) =>
                                    const MonthlySalaryRegister(),
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
                                builder: (context) =>
                                    const MangersMonthlySalespage(),
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
                                builder: (context) =>
                                    const ProductPriceRegister(),
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
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SalesFrst(),
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
                                'F31-SALES REGISTER',
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
                                builder: (context) => const BiodataIdproof(),
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
                                'F32-BIO DATA AND ID PROOF',
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
                                builder: (context) => const PfEsi(),
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
                                'F33- PF OR ESI',
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
                                builder: (context) => const InsuranceRegister(),
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
                                'F34-INSURANCE REGISTER',
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
                                builder: (context) => const PurchaseRegister(),
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
                                'F35-PURCHASE REGISTER',
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
                                builder: (context) => const PurchaseRegister(),
                              )),
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.blue.shade900)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'F36-SETTINGS',
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
                                builder: (context) => const PurchaseRegister(),
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
                                'F37-TANK STOCK',
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
                                builder: (context) => const PurchaseRegister(),
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
                                'F38-SCHEMES REGISTER',
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
