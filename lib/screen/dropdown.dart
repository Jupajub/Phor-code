import 'package:flutter/material.dart';

const List<String> list = <String>[
  '--Please select--',
  'Audit Commitee',
  'Client',
  'Dev',
  'Stakeholder',
  'Tester'
];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 83,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(Icons.arrow_drop_down),
          ],
        ),
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 2,
          color: Color.fromARGB(255, 252, 250, 250),
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
