import 'package:flutter/material.dart';
import 'package:staycation_app/home/count_price.dart';
import 'package:staycation_app/home/expanded_widget.dart';
import 'package:staycation_app/home/facility.dart';
import 'package:staycation_app/home/imageslider.dart';
import 'package:staycation_app/home/rating_review.dart';
import 'package:staycation_app/home/staydata.dart';

const Color iconsColor = Color.fromRGBO(198, 124, 78, 1);

class DetailList extends StatelessWidget {
  final StayData data;

  const DetailList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ImageSlider(image: data.imageUrls),
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
              CountPrice(
                namaPenginapan: data.name,
                nomorWhatsapp: data.nomorWhatsapp,
                hargaPenginapan: data.stayPrice,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
