import 'package:json_annotation/json_annotation.dart';

part 'south_movies.g.dart';

@JsonSerializable()
class SouthMovies {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;

  SouthMovies({
    this.backdropPath,
    this.genreIds,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.releaseDate,
  });

  factory SouthMovies.fromJson(Map<String, dynamic> json) {
    return _$SouthMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SouthMoviesToJson(this);
}
