import 'dart:developer';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/doamin/core/failures/main_failure.dart';
import 'package:netflix/doamin/downloads/i_downloads_repo.dart';
import 'package:netflix/doamin/search/search_service.dart';

import '../../doamin/downloads/models/model_download.dart';
import '../../doamin/search/model/search_respo/search_response.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearchBloc(
    this._downloadsService,
    this._searchService,
  ) : super(SearchState.initial()) {
    //idleState
    on<Initialize>(
      (event, emit) async {
        final _result = await _downloadsService.getDownloadImages();
        final state = _result.fold((MainFailure l) {
          return const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true);
        }, (List<Downloads> list) {
          return SearchState(
              searchResultList: [],
              idleList: list,
              isLoading: false,
              isError: false);
        });
        emit(state);
      },
    );

    on<SearchMovie>(
      (event, emit) async {
        //call search movie api
        log(event.movieQuery);
        emit(const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: false));

        final _result =
            await _searchService.searchMovies(movieQuery: event.movieQuery);
        final _state = _result.fold(
          (MainFailure f) {
            return const SearchState(
              searchResultList: [],
              idleList: [],
              isLoading: false,
              isError: true,
            );
          },
          (SearchResponse r) {
            return SearchState(
              searchResultList: r.results,
              idleList: [],
              isLoading: false,
              isError: false,
            );
          },
        );
        emit(_state);

        //show to ui
      },
    );
  }
}
