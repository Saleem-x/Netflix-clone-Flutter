// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'released_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReleasedMovies _$ReleasedMoviesFromJson(Map<String, dynamic> json) =>
    ReleasedMovies(
      backdropPath: json['backdrop_path'] as String?,
      name: json['name'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalName: json['original_name'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$ReleasedMoviesToJson(ReleasedMovies instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'name': instance.name,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
    };
