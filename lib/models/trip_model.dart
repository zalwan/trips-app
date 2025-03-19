class Trip {
  final String title;
  final String location;
  final String photo;
  final String price;
  final double rating;
  final String summary;

  Trip({
    required this.title,
    required this.location,
    required this.photo,
    required this.price,
    required this.rating,
    required this.summary,
  });

  factory Trip.fromJson(Map<String, dynamic> json) {
    return Trip(
      title: json['title'],
      location: json['location'],
      photo: json['photo'],
      price: json['price'],
      rating: json['rating'].toDouble(),
      summary: json['summary'],
    );
  }
}
