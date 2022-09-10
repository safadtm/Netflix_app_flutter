import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';
import 'package:netflix_app/presentation/widgets/main_title.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo downloadsRepo;
  DownloadsBloc(this.downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            downloadsFailureOrSuccessOption: none(),
          ),
        );
        final Either<MainFailure, List<DownloadsImage>> downloadsImageOption =
            await downloadsRepo.getDownloadsImage;
        emit(
          downloadsImageOption.fold(
            (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccessOption: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsFailureOrSuccessOption: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}
