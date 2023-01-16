part of 'downloads_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    required bool isLoading,
   // required Option<Either<MainFailure, List<Downloads>>>
       // downloadFailureandSucess,
    required List<Downloads> downloads,
  }) = _DownloadState;
  factory DownloadState.inital() {
    return const DownloadState(
      isLoading: false,
      //downloadFailureandSucess: None(),
      downloads: [],
    );
  }
}
