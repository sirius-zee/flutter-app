import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 100, // Lebar gambar memenuhi layar
        height: 100, // Atur tinggi sesuai kebutuhan
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: 30,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green[300],
                alignment: Alignment.center,
                child: const Text(
                  'Green',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            // Anda dapat menambahkan lebih banyak widget di sini jika diperlukan.
          ],
        ),
      ),
    );
  }
}
