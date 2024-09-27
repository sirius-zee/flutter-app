import 'package:flutter/material.dart';
import 'package:staycation_app/home/tabhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: const TabBarView(
          children: [
            Center(child: TabHome()),
            Center(child: TabLoctaion()),
            Center(child: TabSettings()),
          ],
        ),
        // bottomNavigationBar: Container(
        //   decoration: const BoxDecoration(
        //     color: Colors.white,
        //     border: Border(
        //       top: BorderSide(
        //         color: Color.fromARGB(255, 175, 126, 35),
        //         width: 1.0,
        //       ),
        //     ),
        //   ),
        //   child: const TabBar(
        //     tabs: [
        //       SizedBox(
        //         height: 60.0,
        //         child: Tab(
        //           icon: Icon(Icons.home, size: 25.0),
        //         ),
        //       ),
        //       SizedBox(
        //         height: 60.0,
        //         child: Tab(
        //           icon: Icon(Icons.location_pin, size: 25.0),
        //         ),
        //       ),
        //       SizedBox(
        //         height: 60.0,
        //         child: Tab(
        //           icon: Icon(Icons.settings, size: 25.0),
        //         ),
        //       ),
        //     ],
        //     labelColor: Color.fromARGB(255, 175, 126, 35),
        //     unselectedLabelColor: Colors.grey,
        //     indicator: BoxDecoration(
        //       color: Colors.transparent,
        //       border: Border(
        //         bottom: BorderSide(
        //           color: Color.fromARGB(255, 175, 126, 35),
        //           width: 3.0,
        //         ),
        //       ),
        //     ),
        //     indicatorSize: TabBarIndicatorSize.tab,
        //   ),
        // ),
      ),
    );
  }
}

class TabLoctaion extends StatelessWidget {
  const TabLoctaion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Location Maps'),
      ),
    );
  }
}

class TabSettings extends StatelessWidget {
  const TabSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}
