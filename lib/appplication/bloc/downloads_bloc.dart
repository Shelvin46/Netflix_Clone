import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/doamin/downloads/i_downloads_repo.dart';
import '../../doamin/core/failures/main_failure.dart';
import '../../doamin/downloads/models/model_download.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@Injectable()
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadState.inital()) {
    on<_GetDownloadsImages>((event, emit) async {
      emit(state.copyWith(
        downloadFailureandSucess: none(),
        isLoading: true,
      ));

      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImages();
      log(downloadsOption.toString());
      //after getting response
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadFailureandSucess: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downloadFailureandSucess: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
