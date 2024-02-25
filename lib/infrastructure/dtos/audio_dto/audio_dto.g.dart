// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioDtoImpl _$$AudioDtoImplFromJson(Map<String, dynamic> json) =>
    _$AudioDtoImpl(
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String?,
      artistName: json['artistName'] as String?,
      audioUrl: json['audioUrl'] as String?,
      isLiked: json['isLiked'] as bool?,
    );

Map<String, dynamic> _$$AudioDtoImplToJson(_$AudioDtoImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'artistName': instance.artistName,
      'audioUrl': instance.audioUrl,
      'isLiked': instance.isLiked,
    };
