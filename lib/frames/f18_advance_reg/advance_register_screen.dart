import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/searchpage.dart';

class AdvanceRegisterScreen extends StatefulWidget {
  @override
  _AdvanceRegisterScreenState createState() => _AdvanceRegisterScreenState();
}

class _AdvanceRegisterScreenState extends State<AdvanceRegisterScreen> {
  List<String> names = ['NAME', 'MURALI', 'ASWIN', 'THOMAS'];
  List<String> designations = ['DESIGNATION', 'FIC', 'CA', 'FIELD INCHARGE'];
  String? selectedName = 'NAME';
  String? selectedDesignation = 'DESIGNATION';

  // List to hold the data entered in the text fields
  List<List<String>> inputData =
      List.generate(31, (_) => List.generate(4, (_) => ''));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ADVANCE REGISTER',
          style: TextStyle(
              color: Colors.red.shade900, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  GestureDetector(
                    onTap: () => _selectDate(context),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue.shade900,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'MONTH & YEAR',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 500),
                  //   child: IconButton(
                  //     icon: Icon(
                  //       Icons.search,
                  //       color: Colors.blue.shade900,
                  //     ),
                  //     onPressed: () {
                  //       // Implement search functionality
                  //     },
                  //   ),
                  // ),
                  GestureDetector(
                    onTap: () async {
                      final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000),
                        initialEntryMode: DatePickerEntryMode.input,
                      );
                      if (picked != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                searchpage(selectedDate: picked),
                          ),
                        );
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 500),
                      child: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing:
                        20, // Adjusted to provide enough space for wrapped text
                    border: TableBorder.all(),
                    columns: [
                      DataColumn(
                        label: SizedBox(
                          width: 100, // Fixed width for the column
                          child: Center(
                            child: Text(
                              'DATE',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: 150, // Fixed width for the column
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: DropdownButton<String>(
                                  value: selectedName,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedName = value!;
                                    });
                                  },
                                  items: names.map((name) {
                                    return DropdownMenuItem<String>(
                                      value: name,
                                      child: Text(
                                        name,
                                        style: TextStyle(
                                          color: name == 'NAME'
                                              ? const Color.fromARGB(
                                                  255, 7, 75, 134)
                                              : Colors.black,
                                          fontWeight: name == 'NAME'
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: 200, // Fixed width for the column
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: DropdownButton<String>(
                                  value: selectedDesignation,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedDesignation = value!;
                                    });
                                  },
                                  items: designations.map((designation) {
                                    return DropdownMenuItem<String>(
                                      value: designation,
                                      child: Text(
                                        designation,
                                        style: TextStyle(
                                          color: designation == 'DESIGNATION'
                                              ? Colors.blue.shade900
                                              : Colors.black,
                                          fontWeight:
                                              designation == 'DESIGNATION'
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: 150, // Fixed width for the column
                          child: Center(
                            child: Text(
                              'ADVANCE SALARY',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                    rows: [
                      // Fixed row with text "IP1", "IP2", "IP3", "IP4"
                      const DataRow(cells: [
                        DataCell(
                          SizedBox(
                            width: 100, // Fixed width for the cell
                            child: Center(
                              child: TextField(),
                            ),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: 150, // Fixed width for the cell
                            child: Center(
                              child: TextField(),
                            ),
                          ),
                        ),
                       DataCell(
                          SizedBox(
                            width: 200, // Fixed width for the cell
                            child: Center(
                              child: TextField(),
                            ),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: 150, // Fixed width for the cell
                            child: Center(
                              child: TextField(),
                            ),
                          ),
                        ),
                      ]),
                      // Generate 31 rows with blank DataCells
                      ...List.generate(
                        31,
                        (index) => DataRow(cells: [
                          DataCell(
                            SizedBox(
                              width: 100, // Fixed width for the cell
                              child: TextField(
                                maxLines: null,
                                onChanged: (value) {
                                  setState(() {
                                    inputData[index][0] = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 150, // Fixed width for the cell
                              child: TextField(
                                maxLines: null,
                                onChanged: (value) {
                                  setState(() {
                                    inputData[index][1] = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 200, // Fixed width for the cell
                              child: TextField(
                                maxLines: null,
                                onChanged: (value) {
                                  setState(() {
                                    inputData[index][2] = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 150, // Fixed width for the cell
                              child: TextField(
                                maxLines: null,
                                onChanged: (value) {
                                  setState(() {
                                    inputData[index][3] = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 220),
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              // Implement save functionality
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              height: 30,
                              width: 130,
                              child: const Center(
                                child: Text(
                                  "SAVE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            // Implement edit functionality
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 90, 158, 92),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 30,
                            width: 130,
                            child: const Center(
                              child: Text(
                                "EDIT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      // Do something with the selected date
    }
  }
}
