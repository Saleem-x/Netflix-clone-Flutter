// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'south_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SouthMovies _$SouthMoviesFromJson(Map<String, dynamic> json) => SouthMovies(
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$SouthMoviesToJson(SouthMovies instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
    };
