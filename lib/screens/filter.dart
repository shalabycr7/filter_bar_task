import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int selectedIndex = -1;
  List listIteams = [
    'All',
    'Done',
    'Pending',
    'Canceled',
    'Refunded',
    'Waiting',
    'Delivered',
    'Recieved',
    'Given',
  ];

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget buildButton(int index, String label) {
    final isSelected = selectedIndex == index;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
        onPressed: () => onButtonPressed(index),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected
              ? Colors.red
              : const Color.fromARGB(255, 233, 233, 233),
          foregroundColor: isSelected ? Colors.white : Colors.black,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Text(label),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < listIteams.length; i++)
                buildButton(i, listIteams[i]),
            ],
          ),
        ),
      ),
    );
  }
}
