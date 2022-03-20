class ListMovie {
  final String image;
  final String titleMovie;
  final String rating;

  ListMovie({
    required this.image,
    required this.titleMovie,
    required this.rating,
  });
}

List allMovie = [
  ListMovie(
    image: 'assets/image_avatar.png',
    titleMovie: 'Avatar',
    rating: 'assets/image_rating.png',
  ),
  ListMovie(
    image: 'assets/image_joker.png',
    titleMovie: 'Joker',
    rating: 'assets/image_rating2.png',
  ),
];
