import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // Sample list of text
  final List<String> txt = [
    "Page 1",
    "Page 2",
    "Page 3",
    "Page 4",
    // Add more entries here as per your requirement
  ];

  // Create a list of target pages (you can add more)
  final List<Widget> pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    // Add more pages corresponding to the texts
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: ListView.builder(
        itemCount: txt.length, // Dynamically handle number of items
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Container(
              height: 40,
              decoration: BoxDecoration(border: Border.all()),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to a different page on tap
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pages[index]),
                    );
                  },
                  child: Text(
                    txt[index],
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue.shade900,
                      decorationThickness: 2,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Example Page 1
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 1")),
      body: const Center(child: Text("Welcome to Page 1!")),
    );
  }
}

// Example Page 2
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 2")),
      body: const Center(child: Text("Welcome to Page 2!")),
    );
  }
}

// Example Page 3
class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 3")),
      body: const Center(child: Text("Welcome to Page 3!")),
    );
  }
}

// Example Page 4
class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 4")),
      body: const Center(child: Text("Welcome to Page 4!")),
    );
  }
}
