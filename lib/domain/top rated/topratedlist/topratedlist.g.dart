// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topratedlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopRatedList _$TopRatedListFromJson(Map<String, dynamic> json) => TopRatedList(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => TopRatedMovies.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopRatedListToJson(TopRatedList instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
