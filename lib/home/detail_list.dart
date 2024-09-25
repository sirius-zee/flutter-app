import 'package:flutter/material.dart';
import 'package:staycation_app/home/staydata.dart';

class DetailList extends StatelessWidget {
  final StayData data;

  const DetailList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
        backgroundColor: const Color.fromARGB(255, 26, 26, 26),
        foregroundColor: Colors.white70,
        // toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(data.imageAsset),
            Image.asset(data.imageAsset),
          ],
        ),
      ),
    );
  }
}
