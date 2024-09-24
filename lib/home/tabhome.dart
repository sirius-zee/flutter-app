import 'package:flutter/material.dart';
import 'package:staycation_app/home/contentgrid.dart';
import 'package:staycation_app/home/dashboard.dart';

class TabHome extends StatelessWidget {
  const TabHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[const Dashboard(), ContentGrid()],
    );
  }
}
