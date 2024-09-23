import 'package:flutter/material.dart';

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
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        'assets/img/premier-suite.jpg',
        fit: BoxFit.cover, // Memastikan gambar menyesuaikan dengan ukuran layar
        width: double.infinity, // Lebar gambar memenuhi layar
        height: double.infinity,
      ),
      const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Discover serenity in The Heart Of Comfort!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0, // Radius dari bayangan
                      color: Color.fromRGBO(
                          0, 0, 0, 0.5), // Warna dan transparansi bayangan
                      offset: Offset(2.0, 2.0), // Posisi bayangan, x dan y
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10), // Jarak antara dua teks
              Text(
                "Welcome to a sanctuary where every detail is designed for your comfort and peace.",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0, // Radius dari bayangan
                      color: Color.fromRGBO(
                          0, 0, 0, 0.5), // Warna dan transparansi bayangan
                      offset: Offset(2.0, 2.0), // Posisi bayangan, x dan y
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ]));
  }
}
