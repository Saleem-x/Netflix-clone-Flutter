// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchmovieslist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMoviesList _$SearchMoviesListFromJson(Map<String, dynamic> json) =>
    SearchMoviesList(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => SearchMovies.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchMoviesListToJson(SearchMoviesList instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
