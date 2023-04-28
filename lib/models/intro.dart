class IntroContent {
  String title;
  String text;
  List<String> image;

  IntroContent({
    required this.title,
    required this.text,
    required this.image,
  });

  static List<IntroContent> introLis = [
    IntroContent(
      title: 'SPORT',
      text:
          'Découvrez les événements sportifs les plus populaires et achetez vos pass en un seul clic. Soyez au coeur de l\'action et profitez de moments de pure adrénaline en direct.',
      image: [
        'assets/images/sport4.jpeg',
        'assets/images/sport1.jpeg',
        'assets/images/sport2.jpeg',
        'assets/images/sport3.jpeg',
        'assets/images/sport.jpg',
      ],
    ),
    IntroContent(
      title: 'CONCERT',
      text:
          'Découvrez vos vedettes préférées et achetez vos billets pour vivre des moments inoubliables. Vibrez au rythme de la musique et créez des souvenirs qui resteront gravés dans votre mémoire.',
      image: [
        'assets/images/concert6.jpeg',
        'assets/images/concert.jpg',
        'assets/images/concert1.jpg',
        'assets/images/concert2.jpg',
        'assets/images/concert4.jpg',
      ],
    ),
    IntroContent(
      title: 'CINEMA',
      text:
          'Découvrez les films les plus populaires et réservez vos sièges en avance pour éviter les files d\'attente. Profitez de la magie du cinéma et laissez-vous emporter par l\'histoire sur grand écran.',
      image: [
        'assets/images/movie12.jpeg',
        'assets/images/movie11.jpeg',
        'assets/images/movie.jpg',
        'assets/images/movie1.jpg',
        'assets/images/movie4.jpg',
      ],
    ),
    IntroContent(
      title: 'PARTY',
      text:
          'Découvrez les événements festifs les plus tendances et achetez vos pass pour entrer un seul clic. Profiter d\'une ambiance de folie et amusez-vous jusq\'au bout de la nuit',
      image: [
        'assets/images/party1.jpg',
        'assets/images/party11.jpeg',
        'assets/images/party.jpg',
        'assets/images/party1.jpg',
        'assets/images/party12.jpeg',
      ],
    ),
    IntroContent(
      title: 'HOTEL',
      text:
          'Découvrez les hôtels les plus confortables et choisissez celui qui convient le mieux à vos besoins. Réservez en toute simplicité et profitez d\'un séjour agréable et mémorable.',
      image: [
        'assets/images/hotel12.jpeg',
        'assets/images/hotel.jpg',
        'assets/images/hotel3.jpg',
        'assets/images/hotel11.jpeg',
        'assets/images/hotel1.jpg',
      ],
    )
  ];
}
