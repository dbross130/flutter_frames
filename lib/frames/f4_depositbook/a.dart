import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Increment Containers Example'),
        ),
        body: IncrementContainersExample(),
      ),
    );
  }
}

class IncrementContainersExample extends StatefulWidget {
  @override
  _IncrementContainersExampleState createState() => _IncrementContainersExampleState();
}

class _IncrementContainersExampleState extends State<IncrementContainersExample> {
  List<String> _containers = []; // List to keep track of container labels

  void _addContainer() {
    setState(() {
      _containers.add('D${_containers.length + 1}'); // Add new container label
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display all containers
          Column(
            children: _containers.map((label) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 5), // Add spacing between containers
                height: 35,
                width: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade900),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: _addContainer,
              child: Container(
                width: 60,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red.shade900, width: 2),
                ),
                child: Center(
                  child: Text(
                    '[+]',
                    style: TextStyle(
                      color: Colors.red.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
