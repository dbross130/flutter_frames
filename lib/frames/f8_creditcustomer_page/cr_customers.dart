// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_import
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_frames/frames/f8_creditcustomer_page/customer_name.dart';

class CreditCustomersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CREDIT CUSTOMERS',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue.shade300,
                  ),
                ),
                height: 40,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: Icon(Icons.search, color: Colors.blue.shade900),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(left: 40, right: 40, bottom: 40),
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CustomerName())),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade900)),
                    child: Center(
                        child: Text(
                      'CUSTOMER ${index + 1}',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
