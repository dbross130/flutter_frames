import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Popup Menu Example')),
        body: Center(
          child: PopupMenuDemo(),
        ),
      ),
    );
  }
}

class PopupMenuDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Show the popup menu when the container is tapped
        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(
            0,
            0,
            MediaQuery.of(context).size.width - 150,
            MediaQuery.of(context).size.height - 30,
          ),
          items: [
            const PopupMenuItem(
              value: 'option1',
              child: Text('Option 1'),
            ),
            const PopupMenuItem(
              value: 'option2',
              child: Text('Option 2'),
            ),
            const PopupMenuItem(
              value: 'option3',
              child: Text('Option 3'),
            ),
          ],
        ).then((value) {
          // Handle the selected value if needed
          if (value != null) {
            print('Selected value: $value');
            // SalesRegister();
          }
        });
      },
      child: Container(
        height: 30,
        
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue.shade100
        ),
        child: const Center(
          child: Text(
            'B2B',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}






