// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopRatedMovies _$TopRatedMoviesFromJson(Map<String, dynamic> json) =>
    TopRatedMovies(
      backdropPath: json['backdrop_path'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$TopRatedMoviesToJson(TopRatedMovies instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
