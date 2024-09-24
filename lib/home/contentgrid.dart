import 'package:flutter/material.dart';

class ContentGrid extends StatelessWidget {
  ContentGrid({super.key});

  final List<String> _dataCard = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: [
          for (String data in _dataCard)
            ListTile(
              title: Text(data),
              tileColor: Colors.amber,
            )
        ],
      ),
    );
  }
}
