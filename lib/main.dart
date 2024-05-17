import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/ReadingBook.dart';
import 'package:flutter_frames/frames/ppc/ppc_book.dart';

import 'frames/frames.dart';
import 'frames/ppc/ppc.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FramesPage(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
