import 'package:json_annotation/json_annotation.dart';

part 'drama_movies.g.dart';

@JsonSerializable()
class DramaMovies {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  DramaMovies({
    this.adult,
    this.backdropPath,
    this.name,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.posterPath,
  });

  factory DramaMovies.fromJson(Map<String, dynamic> json) {
    return _$DramaMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DramaMoviesToJson(this);
}
