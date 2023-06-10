import 'package:json_annotation/json_annotation.dart';

part 'released_movies.g.dart';

@JsonSerializable()
class ReleasedMovies {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  String? name;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_name')
  String? originalName;
  double? popularity;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  ReleasedMovies({
    this.backdropPath,
    this.name,
    this.originalLanguage,
    this.originalName,
    this.popularity,
    this.posterPath,
  });

  factory ReleasedMovies.fromJson(Map<String, dynamic> json) {
    return _$ReleasedMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReleasedMoviesToJson(this);
}
