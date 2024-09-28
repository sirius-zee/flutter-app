import 'package:flutter/material.dart';

const myColor = Color.fromRGBO(198, 124, 78, 1);

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 26, 26),
            Color.fromRGBO(49, 49, 49, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              'Location',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 133, 133, 133),
              ),
            ),
            const Text(
              'Dieng, Jawa Tengah',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 148, 148, 148),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(198, 124, 78, 0.2),
                    Color.fromRGBO(198, 124, 78, 1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(237, 81, 81, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        child: Text(
                          'Staycation Apps',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Booking Sekarang Mumpung Banyak Promo',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),

            // Container(
            //   decoration: BoxDecoration(
            //     gradient: const LinearGradient(
            //       colors: [
            //         Color.fromARGB(5, 179, 179, 179),
            //         Color.fromARGB(40, 179, 179, 179),
            //       ],
            //       begin: Alignment.topLeft,
            //       end: Alignment.bottomRight,
            //     ),
            //     borderRadius: BorderRadius.circular(15),
            //   ),
            //   child: const Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 16),
            //     child: Row(
            //       children: <Widget>[
            //         Icon(
            //           Icons.search,
            //           color: Colors.white,
            //         ),
            //         SizedBox(width: 8.0),
            //         Expanded(
            //           child: TextField(
            //             decoration: InputDecoration(
            //               hintText: 'Search...',
            //               hintStyle: TextStyle(color: Colors.white),
            //               border: InputBorder.none,
            //             ),
            //             style: TextStyle(color: Colors.white),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
