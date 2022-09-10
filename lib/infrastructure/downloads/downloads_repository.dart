import 'package:dio/dio.dart';
import 'package:netflix_app/domain/core/api_end_points.dart';
import 'package:netflix_app/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_app/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';

class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<DownloadsImage>>> getDownloadsImage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<DownloadsImage> downloadList = [];
        for (final raw in response.data) {
          downloadList.add(
            DownloadsImage.fromJson(raw as Map<String, dynamic>),
          );
        }
        print(downloadList);
        return Right(downloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
