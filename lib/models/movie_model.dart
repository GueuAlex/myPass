class MovieModel {
  final String id;
  final String title;
  final String duration;
  final String coverImage;
  final String sinopcy;
  final List<String> gender;
  final DateTime date;
  final int totalReview;
  final double ratingScore;

  const MovieModel({
    required this.id,
    required this.title,
    this.duration = '01:45:05',
    required this.coverImage,
    required this.sinopcy,
    required this.gender,
    this.ratingScore = 0,
    this.totalReview = 0,
    required this.date,
  });
  static List<MovieModel> sampleMovie = [
    MovieModel(
      id: '1',
      ratingScore: 4.5,
      title: 'John weack 4',
      coverImage: 'assets/images/movies_poster/BlackPanther.jpg',
      sinopcy:
          'Ceci est une brieve description de John Weack 4, nous écrirons quelques lignes histore d\'occupé un peu la place pour que celà soit crédible et ressemble vraiment a une apllication de movie. Bref.....',
      gender: ['Action', 'Adventure', 'Sanglant'],
      date: DateTime.now(),
    ),
    MovieModel(
      id: '2',
      ratingScore: 3.25,
      title: 'Spider Man, Back Home',
      coverImage: 'assets/images/movies_poster/moonlight.jpg',
      sinopcy:
          'Ceci est une brieve description de John Weack 4, nous écrirons quelques lignes histore d\'occupé un peu la place pour que celà soit crédible et ressemble vraiment a une apllication de movie. Bref.....',
      gender: ['Action', 'Adventure', 'Sanglant'],
      date: DateTime.now(),
    ),
    MovieModel(
      id: '3',
      ratingScore: 4.8,
      title: 'Avatar le dernier Maître de l\'air',
      coverImage: 'assets/images/movies_poster/super_man_no_way_home.jpg',
      sinopcy:
          'Ceci est une brieve description de John Weack 4, nous écrirons quelques lignes histore d\'occupé un peu la place pour que celà soit crédible et ressemble vraiment a une apllication de movie. Bref.....',
      gender: ['Action', 'Adventure', 'Sanglant'],
      date: DateTime.now(),
    ),
    MovieModel(
      id: '4',
      title: 'Mary Qeen of Scots',
      coverImage: 'assets/images/movies_poster/super-mario-bros.jpg',
      sinopcy:
          'Ceci est une brieve description de John Weack 4, nous écrirons quelques lignes histore d\'occupé un peu la place pour que celà soit crédible et ressemble vraiment a une apllication de movie. Bref.....',
      gender: ['Action', 'Adventure', 'Sanglant'],
      date: DateTime.now(),
    ),
    MovieModel(
      id: '5',
      ratingScore: 3.5,
      title: 'How to Train your Dragon  4',
      coverImage: 'assets/images/movies_poster/us.jpg',
      sinopcy:
          'Ceci est une brieve description de John Weack 4, nous écrirons quelques lignes histore d\'occupé un peu la place pour que celà soit crédible et ressemble vraiment a une apllication de movie. Bref.....',
      gender: ['Action', 'Adventure', 'Sanglant'],
      date: DateTime.now(),
    ),
  ];
}
