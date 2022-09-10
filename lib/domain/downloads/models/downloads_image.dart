import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_image.freezed.dart';
part 'downloads_image.g.dart';

@freezed
class DownloadsIamge with _$DownloadsIamge {
  const factory DownloadsIamge({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _DownloadsIamge;

  factory DownloadsIamge.fromJson(Map<String, dynamic> json) =>
      _$DownloadsIamgeFromJson(json);
}
