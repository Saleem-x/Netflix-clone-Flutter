// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drama_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DramaMovies _$DramaMoviesFromJson(Map<String, dynamic> json) => DramaMovies(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      name: json['name'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalName: json['original_name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$DramaMoviesToJson(DramaMovies instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'name': instance.name,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
    };
