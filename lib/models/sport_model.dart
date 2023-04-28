import 'package:flutter/material.dart';

class SportEven {
  final String id;
  final String evenName;
  final String country;
  final DateTimeRange duration;

  SportEven({
    required this.id,
    required this.evenName,
    required this.country,
    required this.duration,
  });

  static List<SportEven> sampleSportEven = [
    can,
  ];
}

class SportModel {
  SportModel({
    required this.id,
    required this.home,
    required this.away,
    required this.playDay,
    required this.coverPath,
    required this.hour,
    required this.location,
    required this.sportEven,
  });
  final String id;
  final String hour;
  final String location;
  final Team home;
  final Team away;
  final DateTime playDay;
  final String coverPath;
  final SportEven sportEven;

  static List<SportModel> sampleSport = [
    SportModel(
      id: '1',
      location: 'Stade FHB - Abidjan Plateau',
      sportEven: can,
      playDay: DateTime.now(),
      coverPath: 'assets/images/sport_poster/cmciv.jpg',
      hour: '12:30',
      home: Team(
        name: 'Côte d\'Ivoire',
        flag: 'assets/images/flags/ci.png',
        slog: 'CIV',
      ),
      away: Team(
        name: 'Cameroune',
        flag: 'assets/images/flags/cm.png',
        slog: 'CAM',
      ),
    ),
    SportModel(
      id: '2',
      location: 'Stade FHB - Abidjan Plateau',
      sportEven: can,
      playDay: DateTime.now(),
      coverPath: 'assets/images/sport_poster/snal.jpg',
      hour: '16:00',
      home: Team(
        name: 'Burkina Faso',
        flag: 'assets/images/flags/bf.png',
        slog: 'BFA',
      ),
      away: Team(
        name: 'RD Congo',
        flag: 'assets/images/flags/cd.png',
        slog: 'RDC',
      ),
      //playDay: DateTime.now(),
    ),
    SportModel(
      id: '3',
      hour: '18:15',
      location: 'Stade ADO - Ebimpé Abidjan',
      sportEven: can,
      playDay: DateTime.now(),
      coverPath: 'assets/images/sport_poster/maga.jpg',
      home: Team(
        name: 'Algerie',
        flag: 'assets/images/flags/dz.webp',
        slog: 'ALG',
      ),
      away: Team(
        name: 'Egypte',
        flag: 'assets/images/flags/eg.png',
        slog: 'EGT',
      ),
    ),
    SportModel(
      id: '4',
      hour: '10:00',
      location: 'Stade de Man - Man',
      sportEven: can,
      playDay: DateTime.now(),
      coverPath: 'assets/images/sport_poster/bfcl.jpg',
      home: Team(
        name: 'Sénégal',
        flag: 'assets/images/flags/sn.png',
        slog: 'SNG',
      ),
      away: Team(
        name: 'Maroc',
        flag: 'assets/images/flags/ma.png',
        slog: 'MRC',
      ),
    ),
    SportModel(
      id: '5',
      location: 'Stade FHB - Abidjan Plateau',
      hour: '09:45',
      sportEven: can,
      playDay: DateTime.now(),
      coverPath: 'assets/images/sport_poster/snal.jpg',
      home: Team(
        name: 'Mali',
        flag: 'assets/images/flags/ml.png',
        slog: 'MAL',
      ),
      away: Team(
        name: 'Gabon',
        flag: 'assets/images/flags/ga.png',
        slog: 'GAB',
      ),
    ),
    SportModel(
      id: '6',
      playDay: DateTime.now(),
      coverPath: 'assets/images/sport_poster/snal.jpg',
      location: 'Stade ADO Ebimpe - Abidjan',
      hour: '20:00',
      sportEven: can,
      home: Team(
        name: 'Tunisie',
        flag: 'assets/images/flags/tn.png',
        slog: 'TUN',
      ),
      away: Team(
        name: 'Nigéria',
        flag: 'assets/images/flags/ng.png',
        slog: 'NGA',
      ),
    )
  ];
}

class Team {
  Team({
    required this.name,
    required this.flag,
    required this.slog,
  });

  final String name;
  final String flag;
  final String slog;
}

SportEven can = SportEven(
    id: '1',
    evenName: 'CAN 2023',
    country: 'Côte d\'Ivoire',
    duration: DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(
        const Duration(days: 30),
      ),
    ));
