class Movie {
  final String title;
  final String posterUrl;
  final String description;

  Movie({required this.title,
    required this.posterUrl,
    required this.description
  });
  factory Movie.fromJson(Map<String , dynamic> json){
    return Movie(
        title: json['title'],
        posterUrl: json['posterUrl'],
        description: json['description']
    );
  }
}