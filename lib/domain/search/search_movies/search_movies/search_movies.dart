import 'package:json_annotation/json_annotation.dart';
part 'search_movies.g.dart';

@JsonSerializable()
class SearchMovies {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;

  SearchMovies({
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.releaseDate,
  });

  factory SearchMovies.fromJson(Map<String, dynamic> json) {
    return _$SearchMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchMoviesToJson(this);
}
