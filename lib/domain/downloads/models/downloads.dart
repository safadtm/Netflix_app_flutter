import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class DownloadsImage with _$DownloadsImage {
  const factory DownloadsImage({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _DownloadsImage;

  factory DownloadsImage.fromJson(Map<String, dynamic> json) =>
      _$DownloadsImageFromJson(json);
}
