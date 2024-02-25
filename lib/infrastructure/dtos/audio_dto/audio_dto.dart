import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_dto.freezed.dart';
part 'audio_dto.g.dart';

@freezed
class AudioDto with _$AudioDto {
  factory AudioDto({
    String? imageUrl,
    String? title,
    String? artistName,
    String? audioUrl,
    bool? isLiked,
  }) = _AudioDto;

  factory AudioDto.fromJson(Map<String, dynamic> json) => _$AudioDtoFromJson(json);
}
