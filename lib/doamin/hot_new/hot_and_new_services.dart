import 'package:dartz/dartz.dart';
import 'package:netflix/doamin/core/failures/main_failure.dart';
import 'package:netflix/doamin/hot_new/model/hot_and_new_resp/hot_and_new_resp.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData();
   Future<Either<MainFailure, HotAndNewResp>> getHotAndNewTvData();
}
