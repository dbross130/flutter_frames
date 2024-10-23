// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Bar Chart Example')),
//         body: BarChartSample(),
//       ),
//     );
//   }
// }

// class BarChartSample extends StatefulWidget {
//   @override
//   _BarChartSampleState createState() => _BarChartSampleState();
// }

// class _BarChartSampleState extends State<BarChartSample> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: BarChart(
//         BarChartData(
//           barGroups: _createBarGroups(),
//           titlesData: FlTitlesData(
//             bottomTitles: AxisTitles(
//               sideTitles: SideTitles(showTitles: true, getTitlesWidget: _bottomTitleWidgets),
//             ),
//             leftTitles: AxisTitles(
//               sideTitles: SideTitles(showTitles: true),
//             ),
//           ),
//           borderData: FlBorderData(show: false),
//           barTouchData: BarTouchData(enabled: true),
//         ),
//       ),
//     );
//   }

//   // Define the data for the bars
//   List<BarChartGroupData> _createBarGroups() {
//     return [
//       BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 8, color: Colors.blue)]),
//       BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 10, color: Colors.green)]),
//       BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 14, color: Colors.red)]),
//       BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 15, color: Colors.yellow)]),
//     ];
//   }

//   // Define the bottom titles
//   Widget _bottomTitleWidgets(double value, TitleMeta meta) {
//     const style = TextStyle(
//       color: Colors.black,
//       fontWeight: FontWeight.bold,
//       fontSize: 14,
//     );
//     Widget text;
//     switch (value.toInt()) {
//       case 0:
//         text = Text('Jan', style: style);
//         break;
//       case 1:
//         text = Text('Feb', style: style);
//         break;
//       case 2:
//         text = Text('Mar', style: style);
//         break;
//       case 3:
//         text = Text('Apr', style: style);
//         break;
//       default:
//         text = Text('', style: style);
//         break;
//     }
//     return SideTitleWidget(
//       axisSide: meta.axisSide,
//       child: text,
//     );
//   }
// }
