import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f35_purchase_register/purchase_main_page.dart';

class PurchaseRegister extends StatelessWidget {
  const PurchaseRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PURCHASE REGISTER',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red.shade700),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _showproductType(context);
              },
              child: Container(
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade400),
                child: const Center(
                    child: Text(
                  'PRODUCT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _showproductType(context);
              },
              child: Container(
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade400),
                child: const Center(
                    child: Text(
                  'PRODUCT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _showproductType(context);
              },
              child: Container(
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade400),
                child: const Center(
                    child: Text(
                  'PRODUCT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showproductType(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _showcategoryType(context);
                      },
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue.shade100,
                        ),
                        child: const Center(
                          child: Text(
                            'LUBE',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showcategoryType(context);
                    },
                    child: Container(
                      height: 35,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue.shade100,
                      ),
                      child: const Center(
                        child: Text(
                          'BW',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showcategoryType(context);
                    },
                    child: Container(
                      height: 35,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue.shade100,
                      ),
                      child: const Center(
                        child: Text(
                          'LPG',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showcategoryType(context);
                    },
                    child: Container(
                      height: 35,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue.shade100,
                      ),
                      child: const Center(
                        child: Text(
                          '2T',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }

  void _showcategoryType(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          _showvolumeType(context);
                        },
                        child: Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue.shade100,
                          ),
                          child: const Center(
                            child: Text(
                              'CATEGORY 1',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        _showvolumeType(context);
                      },
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue.shade100,
                        ),
                        child: const Center(
                          child: Text(
                            'CATEGORY 2',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }

  void _showvolumeType(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PurchaseMainPage(),
                              ));
                        },
                        child: Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue.shade100,
                          ),
                          child: const Center(
                            child: Text(
                              'VOLUME',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PurchaseMainPage(),
                            ));
                      },
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue.shade100,
                        ),
                        child: const Center(
                          child: Text(
                            'VOLUME',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
