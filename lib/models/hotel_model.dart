import 'package:google_maps_flutter/google_maps_flutter.dart';

class HotelModel {
  final String id;
  final String title;
  final String location;
  final String address;
  final String description;
  final String thumbnailPath;
  final List<String> imagePath;
  final int totalReview;
  final double ratingScore;
  final double price;
  final LatLng coordinate;

  const HotelModel({
    required this.id,
    required this.title,
    required this.location,
    required this.address,
    required this.description,
    required this.thumbnailPath,
    required this.imagePath,
    this.totalReview = 0,
    this.ratingScore = 0,
    required this.coordinate,
    required this.price,
  });

  static List<HotelModel> sampleHotel = const [
    HotelModel(
      id: '1',
      title: 'Luxury Escapes',
      location: 'Bantul Regency, Yogyakarta',
      address: 'Jl. Parangtritis km 8.5, Yogyakarta 55186',
      description:
          'we are only a 10-minute drive from the Water Castel (Tamansari) et un de lorem pseum pour occupé un la place histoire de faire bonne impression sinon rien de grave mais bon c\'est comme ça',
      thumbnailPath: 'assets/images/hotel.jpg',
      imagePath: [
        'assets/images/hotel1.jpg',
        'assets/images/hotel3.jpg',
        'assets/hotel11.jpeg',
      ],
      coordinate: LatLng(-7.8712168283326625, 110.353484068852),
      price: 458,
      ratingScore: 5,
      totalReview: 134,
    ),
    HotelModel(
      id: '2',
      title: 'Hotel Georges Blanc Parc',
      location: 'Grenn Shot Boutique, Hotel',
      address: 'Jl. Parangtritis km 8.5, Yogyakarta 55186',
      description:
          'we are only a 10-minute drive from the Water Castel (Tamansari) et un de lorem pseum pour occupé un la place histoire de faire bonne impression sinon rien de grave mais bon c\'est comme ça',
      thumbnailPath: 'assets/images/hotel12.jpeg',
      imagePath: [
        'assets/images/hotel1.jpg',
        'assets/images/hotel3.jpg',
        'assets/hotel11.jpeg',
      ],
      coordinate: LatLng(-12.8712168283326625, 130.353484068852),
      price: 458,
      ratingScore: 4.25,
      totalReview: 134,
    ),
    HotelModel(
      id: '3',
      title: 'D\'Omah Hotel Yogya',
      location: 'Bantul Regency, Yogyakarta',
      address: 'Jl. Parangtritis km 8.5, Yogyakarta 55186',
      description:
          'we are only a 10-minute drive from the Water Castel (Tamansari) et un de lorem pseum pour occupé un la place histoire de faire bonne impression sinon rien de grave mais bon c\'est comme ça',
      thumbnailPath: 'assets/images/hotel3.jpg',
      imagePath: [
        'assets/images/hotel1.jpg',
        'assets/images/hotel3.jpg',
        'assets/hotel11.jpeg',
      ],
      coordinate: LatLng(-10.8712168283326625, 120.353484068852),
      price: 458,
      ratingScore: 3.25,
      totalReview: 134,
    ),
  ];
}
