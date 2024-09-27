class StayData {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String stayPrice;
  String imageAsset;
  List<String> imageUrls;
  RatingReviewData ratingReview;
  FasilityData fasility;

  StayData({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.stayPrice,
    required this.imageAsset,
    required this.imageUrls,
    required this.ratingReview,
    required this.fasility,
  });
}

class RatingReviewData {
  final double rating;
  final int review;

  RatingReviewData({required this.rating, required this.review});
}

class FasilityData {
  final bool doubleBed;
  final bool roomServices;
  final bool dining;
  final bool wifi;
  final bool noSmoking;

  FasilityData({
    required this.doubleBed,
    required this.roomServices,
    required this.dining,
    required this.wifi,
    required this.noSmoking,
  });
}

final List<StayData> stayDataList = [
  StayData(
    name: 'Farm House Lembang',
    location: 'Lembang',
    description:
        'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    stayPrice: 'Rp 25000',
    imageAsset: 'assets/img/Property1.png',
    imageUrls: [
      'assets/img/Property1.png',
      'assets/img/Property1.png',
      'assets/img/Property1.png',
    ],
    ratingReview: RatingReviewData(rating: 4.5, review: 100),
    fasility: FasilityData(
        doubleBed: true,
        roomServices: true,
        dining: true,
        wifi: true,
        noSmoking: true),
  ),
  StayData(
    name: 'Farm House Lembang',
    location: 'Lembang',
    description:
        'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    stayPrice: 'Rp 25000',
    imageAsset: 'assets/img/Property1.png',
    imageUrls: [
      'assets/img/Property1.png',
      'assets/img/Property1.png',
      'assets/img/Property1.png',
    ],
    ratingReview: RatingReviewData(rating: 4.0, review: 100),
    fasility: FasilityData(
        doubleBed: false,
        roomServices: true,
        dining: false,
        wifi: true,
        noSmoking: true),
  ),
];
