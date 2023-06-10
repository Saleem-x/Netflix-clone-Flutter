import 'package:json_annotation/json_annotation.dart';

part 'coming_soon_movie.g.dart';

@JsonSerializable()
class ComingSoonMovie {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'overview')
  String? overview;
  double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'title')
  String? title;

  ComingSoonMovie({
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
  });

  factory ComingSoonMovie.fromJson(Map<String, dynamic> json) {
    return _$ComingSoonMovieFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComingSoonMovieToJson(this);
}
