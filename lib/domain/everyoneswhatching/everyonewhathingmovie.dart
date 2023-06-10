import 'package:json_annotation/json_annotation.dart';
part 'everyonewhathingmovie.g.dart';

@JsonSerializable()
class EveryOnesWatching {
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

  EveryOnesWatching({
    this.backdropPath,
    this.name,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.posterPath,
  });

  factory EveryOnesWatching.fromJson(Map<String, dynamic> json) {
    return _$EveryOnesWatchingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EveryOnesWatchingToJson(this);
}
