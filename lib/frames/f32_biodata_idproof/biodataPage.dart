import 'package:flutter/material.dart';
import 'package:flutter_frames/frames/f33_pf_esi/pf_esi.dart';

class Biodatapage extends StatelessWidget {
  const Biodatapage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BIO - DATA',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red.shade700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 250, right: 30, top: 30, bottom: 20),
                child: Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(border: Border.all()),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 10, left: 10),
                    child: Text(
                      'NAME :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 10, left: 10),
                    child: Text(
                      'Gender :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 10, left: 10),
                    child: Text(
                      'D O B :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 10, left: 10),
                    child: Text(
                      'ADDRESS :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 10, left: 10),
                    child: Text(
                      'Contact no :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 10, left: 10),
                    child: Text(
                      'Email id :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 10, left: 10),
                    child: Text(
                      'Join date :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 10, left: 10),
                    child: Text(
                      'Father Name :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 10, left: 10),
                    child: Text(
                      'Mother Name :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 10, left: 10),
                    child: Text(
                      'Religion :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 250, bottom: 30, left: 10),
                    child: Text(
                      'Marital status :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 200),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PfEsi(),
                      )),
                  child: Text(
                    'PF, ESI & INSURANCE',
                    selectionColor: Colors.blue,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      decorationColor: Colors.blue.shade900,
                      decorationThickness: 2.5,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
