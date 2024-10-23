import 'package:flutter/material.dart';

class SalarySlip extends StatelessWidget {
  const SalarySlip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SALARY SLIP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red.shade700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20, bottom: 50, left: 450),
                        child: Text(
                          'Salary Slip',
                          style: TextStyle(color: Colors.brown),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(right: 560, bottom: 50, left: 10),
                    child: Text(
                      'January,2023',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Name:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 500,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Monthly attendence:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 410,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Per day wage:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 450,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Monthly salary:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 440,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 500, top: 20),
                    child: Text(
                      'Deductions:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Advance:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 480,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Short:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 480,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Mechanical expenses:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 395,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Fuel Credit:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 465,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Pf/ESI:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 497,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Insurance:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 475,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 10, bottom: 40),
                    child: Row(
                      children: [
                        Text(
                          'NET SALARY AMOUNT:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade900),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 400,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade500, width: 2),
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
