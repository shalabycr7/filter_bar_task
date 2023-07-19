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

  // Switch Case for Content
  String displayText(int selcted) {
    switch (selcted) {
      case 0:
        return '${listIteams[selectedIndex]} Categories';
      case 1:
        return '${listIteams[selectedIndex]} Category';
      case 2:
        return '${listIteams[selectedIndex]} Category';
      case 3:
        return '${listIteams[selectedIndex]} Category';
      case 4:
        return '${listIteams[selectedIndex]} Category';
      case 5:
        return '${listIteams[selectedIndex]} Category';
      case 6:
        return '${listIteams[selectedIndex]} Category';
      case 7:
        return '${listIteams[selectedIndex]} Category';
      case 8:
        return '${listIteams[selectedIndex]} Category';
      default:
        return '';
    }
  }

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
        child: Column(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < listIteams.length; i++)
                    buildButton(i, listIteams[i]),
                ],
              ),
            ),
            Text(
              displayText(selectedIndex),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
