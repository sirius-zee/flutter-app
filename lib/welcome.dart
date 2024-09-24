import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  void klik() {
    developer.log('klik', name: 'Welcome');
  }

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
      Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                const SizedBox(height: 150),
                Image.asset(
                  'assets/img/logo.png',
                  fit: BoxFit
                      .cover, // Memastikan gambar menyesuaikan dengan ukuran layar
                  width: 250, // Lebar gambar memenuhi layar
                  height: 250,
                ),
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
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
                  const SizedBox(height: 10), // Jarak antara dua teks
                  const Text(
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
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: klik,
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor:
                          const Color.fromARGB(255, 175, 126, 35), // Text color
                      shadowColor:
                          const Color.fromRGBO(100, 70, 13, 1), // Shadow color
                      elevation: 5, // Elevation (shadow depth)
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10), // Padding inside the button
                      shape: RoundedRectangleBorder(
                        // Button shape
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ), // Menggunakan fungsi klik
                    child: const SizedBox(
                      width: double.infinity, // Lebar tombol 100%
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ]));
  }
}
