import 'package:flutter/material.dart';

const Color iconsColor = Color.fromRGBO(198, 124, 78, 1);

class FacilityContent extends StatelessWidget {
  final bool doubleBed;
  final bool roomServices;
  final bool dining;
  final bool wifi;
  final bool noSmoking;

  const FacilityContent({
    super.key,
    required this.doubleBed,
    required this.roomServices,
    required this.dining,
    required this.wifi,
    required this.noSmoking,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (doubleBed)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: const BoxDecoration(
              color: iconsColor,
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(3),
              child: Icon(
                Icons.bed_rounded,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        if (roomServices)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: const BoxDecoration(
              color: iconsColor,
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(3),
              child: Icon(
                Icons.room_service,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        if (dining)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: const BoxDecoration(
              color: iconsColor,
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(3),
              child: Icon(
                Icons.dining_outlined,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        if (wifi)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: const BoxDecoration(
              color: iconsColor,
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(3),
              child: Icon(
                Icons.cell_wifi_rounded,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        if (noSmoking)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: const BoxDecoration(
              color: iconsColor,
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(3),
              child: Icon(
                Icons.smoke_free,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }
}
