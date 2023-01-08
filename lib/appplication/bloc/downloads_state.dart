part of 'downloads_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    required bool isLoading,
    required List<Downloads>? downloads,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadFailureandSucess,
  }) = _DownloadState;
  factory DownloadState.inital() {
    return DownloadState(
      isLoading: false,
      downloadFailureandSucess: none(),
      downloads: [],
    );
  }
}
