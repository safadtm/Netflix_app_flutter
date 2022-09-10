part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    List<DownloadsImage>? downloads,
    required Option<Either<MainTitle, List<DownloadsImage>>>
        downloadsFailureOrSuccessOption,
  }) = _DownloadsState;
  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: false,
      downloadsFailureOrSuccessOption: None(),
    );
  }
}
