// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everywatchinglist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EveryonesWatchingList _$EveryonesWatchingListFromJson(
        Map<String, dynamic> json) =>
    EveryonesWatchingList(
      data: (json['results'] as List<dynamic>?)
          ?.map((e) => EveryOnesWatching.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EveryonesWatchingListToJson(
        EveryonesWatchingList instance) =>
    <String, dynamic>{
      'results': instance.data,
    };
