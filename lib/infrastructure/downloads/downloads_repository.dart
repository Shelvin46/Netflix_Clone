import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/doamin/core/api_end_points.dart';
import 'package:netflix/doamin/core/failures/main_failure.dart';
import 'package:netflix/doamin/downloads/i_downloads_repo.dart';
import 'package:netflix/doamin/downloads/models/model_download.dart';

@LazySingleton(
    as: IDownloadsRepo) //here where ever we called the IDownloadRepo the DownloadRepository will be also call
//here we call the api
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.download);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        return Right(downloadList);

        //if the response is true we loop the model and add the all response into list and that list will show pictures
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
