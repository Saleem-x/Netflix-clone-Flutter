import 'package:json_annotation/json_annotation.dart';

part 'top_rated_movies.g.dart';

@JsonSerializable()
class TopRatedMovies {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  TopRatedMovies({
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
  });

  factory TopRatedMovies.fromJson(Map<String, dynamic> json) {
    return _$TopRatedMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopRatedMoviesToJson(this);
}
