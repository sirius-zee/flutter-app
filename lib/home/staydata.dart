class StayData {
  String name;
  String nomorWhatsapp;
  String location;
  String description;
  int stayPrice;
  String imageAsset;
  List<String> imageUrls;
  RatingReviewData ratingReview;
  FasilityData fasility;

  StayData({
    required this.name,
    required this.nomorWhatsapp,
    required this.location,
    required this.description,
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
    name: 'Dieng Plateau Hotel',
    nomorWhatsapp: '6281234567890',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Dieng Plateau Hotel terletak di pusat Dieng, menawarkan pemandangan yang indah dan akses mudah ke tempat wisata. Setiap kamar dilengkapi dengan fasilitas modern dan pemandangan pegunungan yang menakjubkan.',
    stayPrice: 200000,
    imageAsset: 'assets/img/dph1.jpg',
    imageUrls: [
      'assets/img/dph1.jpg',
      'assets/img/dph2.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.8, review: 120),
    fasility: FasilityData(
        doubleBed: true,
        roomServices: true,
        dining: true,
        wifi: true,
        noSmoking: true),
  ),
  StayData(
    name: 'Homestay Dieng Indah',
    nomorWhatsapp: '6289876543210',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Homestay Dieng Indah menawarkan pengalaman menginap yang nyaman dengan suasana pedesaan. Lokasi yang tenang dan layanan ramah menjadikan tempat ini pilihan yang tepat untuk keluarga.',
    stayPrice: 150000,
    imageAsset: 'assets/img/hdi1.png',
    imageUrls: [
      'assets/img/hdi1.png',
      'assets/img/hdi2.jpg',
      'assets/img/hdi3.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.7, review: 80),
    fasility: FasilityData(
        doubleBed: true,
        roomServices: true,
        dining: false,
        wifi: true,
        noSmoking: true),
  ),
  StayData(
    name: 'Villa Bukit Sari',
    nomorWhatsapp: '6287654321098',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Villa Bukit Sari adalah pilihan ideal bagi Anda yang mencari ketenangan. Dikelilingi oleh alam yang asri, villa ini dilengkapi dengan kolam renang dan fasilitas barbecue.',
    stayPrice: 350000,
    imageAsset: 'assets/img/vbs1.jpg',
    imageUrls: [
      'assets/img/vbs1.jpg',
      'assets/img/vbs2.jpg',
      'assets/img/vbs3.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.6, review: 60),
    fasility: FasilityData(
        doubleBed: true,
        roomServices: false,
        dining: true,
        wifi: true,
        noSmoking: true),
  ),
  StayData(
    name: 'Penginapan Ajaib',
    nomorWhatsapp: '6281543219876',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Penginapan Ajaib menyuguhkan pengalaman menginap yang unik dengan suasana yang nyaman. Dekat dengan semua tempat wisata terkenal di Dieng.',
    stayPrice: 120000,
    imageAsset: 'assets/img/pa1.jpg',
    imageUrls: [
      'assets/img/pa1.jpg',
      'assets/img/pa2.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.5, review: 50),
    fasility: FasilityData(
        doubleBed: false,
        roomServices: true,
        dining: true,
        wifi: true,
        noSmoking: true),
  ),
  StayData(
    name: 'Dieng Guesthouse',
    nomorWhatsapp: '6282345678901',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Dieng Guesthouse menyediakan akomodasi yang nyaman dan harga terjangkau. Cocok untuk backpacker dan wisatawan yang ingin menikmati keindahan Dieng.',
    stayPrice: 80000,
    imageAsset: 'assets/img/dg1.jpg',
    imageUrls: [
      'assets/img/dg1.jpg',
      'assets/img/dg2.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.2, review: 30),
    fasility: FasilityData(
        doubleBed: false,
        roomServices: false,
        dining: false,
        wifi: true,
        noSmoking: false),
  ),
  StayData(
    name: 'Rumah Singgah Dieng',
    nomorWhatsapp: '6282345678902',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Rumah Singgah Dieng menawarkan suasana homestay yang nyaman dan bersih. Dekat dengan tempat wisata Dieng dan cocok untuk keluarga.',
    stayPrice: 95000,
    imageAsset: 'assets/img/rsd1.jpg',
    imageUrls: [
      'assets/img/rsd1.jpg',
      'assets/img/rsd2.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.4, review: 40),
    fasility: FasilityData(
        doubleBed: true,
        roomServices: false,
        dining: true,
        wifi: true,
        noSmoking: true),
  ),
  StayData(
    name: 'Dieng Cottages',
    nomorWhatsapp: '6283456789012',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Dieng Cottages menyediakan cottage yang nyaman dengan pemandangan indah dan akses ke kolam renang. Ideal untuk liburan romantis.',
    stayPrice: 300000,
    imageAsset: 'assets/img/dc1.jpg',
    imageUrls: [
      'assets/img/dc1.jpg',
      'assets/img/dc2.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.9, review: 70),
    fasility: FasilityData(
        doubleBed: true,
        roomServices: true,
        dining: true,
        wifi: true,
        noSmoking: true),
  ),
  StayData(
    name: 'Dieng Backpacker',
    nomorWhatsapp: '6284567890123',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Dieng Backpacker adalah tempat menginap yang ramah anggaran, ideal untuk para backpacker yang mencari tempat sederhana namun nyaman.',
    stayPrice: 50000,
    imageAsset: 'assets/img/db1.jpg',
    imageUrls: [
      'assets/img/db1.jpg',
      'assets/img/db2.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.1, review: 25),
    fasility: FasilityData(
        doubleBed: false,
        roomServices: false,
        dining: false,
        wifi: true,
        noSmoking: true),
  ),
  StayData(
    name: 'Villa Dieng Sejahtera',
    nomorWhatsapp: '6285678901234',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Villa Dieng Sejahtera menawarkan pengalaman menginap yang mewah dengan fasilitas lengkap dan pemandangan alam yang menakjubkan.',
    stayPrice: 500000,
    imageAsset: 'assets/img/vds1.jpeg',
    imageUrls: [
      'assets/img/vds1.jpeg',
      'assets/img/vds2.jpeg',
    ],
    ratingReview: RatingReviewData(rating: 4.7, review: 90),
    fasility: FasilityData(
        doubleBed: true,
        roomServices: true,
        dining: true,
        wifi: true,
        noSmoking: true),
  ),
  StayData(
    name: 'Pondok Wisata Dieng',
    nomorWhatsapp: '6286789012345',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Pondok Wisata Dieng adalah tempat menginap yang sederhana dan nyaman, dikelilingi oleh pemandangan alam yang indah. Cocok untuk wisatawan yang ingin berpetualang.',
    stayPrice: 75000,
    imageAsset: 'assets/img/pwd1.jpg',
    imageUrls: [
      'assets/img/pwd1.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.0, review: 20),
    fasility: FasilityData(
        doubleBed: true,
        roomServices: false,
        dining: false,
        wifi: true,
        noSmoking: false),
  ),
  StayData(
    name: 'Cottage Dataran Tinggi',
    nomorWhatsapp: '6287890123456',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Cottage Dataran Tinggi menawarkan suasana tenang dengan fasilitas yang nyaman, cocok untuk berlibur bersama keluarga.',
    stayPrice: 280000,
    imageAsset: 'assets/img/cdt1.jpg',
    imageUrls: [
      'assets/img/cdt1.jpg',
      'assets/img/cdt2.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.5, review: 55),
    fasility: FasilityData(
        doubleBed: true,
        roomServices: true,
        dining: true,
        wifi: true,
        noSmoking: true),
  ),
  StayData(
    name: 'Wisata Alam Guest House',
    nomorWhatsapp: '6288901234567',
    location: 'Dieng, Wonosobo, Jawa Tengah',
    description:
        'Wisata Alam Guest House adalah pilihan ideal untuk keluarga dan kelompok besar, menawarkan kamar luas dan fasilitas lengkap.',
    stayPrice: 400000,
    imageAsset: 'assets/img/wagh1.jpg',
    imageUrls: [
      'assets/img/wagh1.jpg',
      'assets/img/wagh2.jpg',
    ],
    ratingReview: RatingReviewData(rating: 4.8, review: 100),
    fasility: FasilityData(
        doubleBed: true,
        roomServices: true,
        dining: true,
        wifi: true,
        noSmoking: true),
  ),
];
