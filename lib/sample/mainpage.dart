import 'package:flutter/material.dart';
import 'package:flutter_frames/sample/model.dart';
import 'package:get/get.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    final countcontroller Countcontroller = Get.put(countcontroller());

    return MaterialApp(
      home: counterscreen(),
    );
  }
}

class counterscreen extends StatelessWidget {
  const counterscreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('helo');
    final countcontroller Countcontroller = Get.find();
    return Scaffold(
      body: RepaintBoundary(
        child: Center(
          child: Obx(
            () => Text('counter value:${Countcontroller.counter}'),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              onPressed: () {
                Countcontroller.increment();
              },
              child: Icon(Icons.add)),
          FloatingActionButton(
            onPressed: () {
              Countcontroller.decrement();
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
