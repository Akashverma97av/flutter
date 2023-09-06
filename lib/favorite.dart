class Favorite {
  final String title;
  final String artist;

  Favorite(this.title, this.artist);

  /// Convert from JSON response stream to Favorite object
  Favorite.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        artist = json['artist'];

  /// Convert an in-memory representation of a Favorite object to a Map<String, dynamic>
  Map<String, dynamic> toJson() => {
    'title': title,
    'artist': artist,
  };
}