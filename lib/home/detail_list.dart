import 'package:flutter/material.dart';
import 'package:staycation_app/home/count_price.dart';
import 'package:staycation_app/home/expanded_widget.dart';
import 'package:staycation_app/home/facility.dart';
import 'package:staycation_app/home/rating_review.dart';
import 'package:staycation_app/home/staydata.dart';
import 'dart:developer' as developer;

const Color iconsColor = Color.fromRGBO(198, 124, 78, 1);

class DetailList extends StatelessWidget {
  final StayData data;

  const DetailList({super.key, required this.data});

  void klik() {
    developer.log('klik', name: 'Welcome');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Detail'),
      //   backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      //   foregroundColor: Colors.white70,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    Text(
                      'Detail ${data.name}',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image.asset(
                    data.imageAsset,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                data.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RatingReview(
                    rating: data.ratingReview.rating.toString(),
                    review: data.ratingReview.review.toString(),
                  ),
                  FacilityContent(
                    doubleBed: data.fasility.doubleBed,
                    roomServices: data.fasility.roomServices,
                    dining: data.fasility.dining,
                    wifi: data.fasility.wifi,
                    noSmoking: data.fasility.noSmoking,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 230, 230, 230),
              ),
              const SizedBox(height: 5),
              const Text(
                'Descriptions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              ExpandedWidget(text: data.description),
              const SizedBox(height: 20),
              CountPrice(),
              // const SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: klik,
              //   style: ElevatedButton.styleFrom(
              //     foregroundColor: Colors.white,
              //     backgroundColor:
              //         const Color.fromARGB(255, 175, 126, 35), // Text color
              //     shadowColor:
              //         const Color.fromRGBO(100, 70, 13, 1), // Shadow color
              //     elevation: 5, // Elevation (shadow depth)
              //     padding: const EdgeInsets.symmetric(
              //         horizontal: 30,
              //         vertical: 20), // Padding inside the button
              //     shape: RoundedRectangleBorder(
              //       // Button shape
              //       borderRadius: BorderRadius.circular(16),
              //     ),
              //   ), // Menggunakan fungsi klik
              //   child: const SizedBox(
              //     width: double.infinity, // Lebar tombol 100%
              //     child: Center(
              //       child: Text(
              //         'Order Now',
              //         style: TextStyle(
              //           fontSize: 20,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
