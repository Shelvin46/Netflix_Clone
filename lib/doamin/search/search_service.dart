import 'package:dartz/dartz.dart';
import 'package:flutter/animation.dart';
import 'package:netflix/doamin/core/failures/main_failure.dart';
import 'package:netflix/doamin/search/model/search_respo/search_response.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResponse>> searchMovies({
    required String movieQuery,
  });
}
