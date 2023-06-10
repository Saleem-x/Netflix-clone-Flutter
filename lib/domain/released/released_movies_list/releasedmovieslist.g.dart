// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'releasedmovieslist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReleasedMoviesList _$ReleasedMoviesListFromJson(Map<String, dynamic> json) =>
    ReleasedMoviesList(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => ReleasedMovies.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReleasedMoviesListToJson(ReleasedMoviesList instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
