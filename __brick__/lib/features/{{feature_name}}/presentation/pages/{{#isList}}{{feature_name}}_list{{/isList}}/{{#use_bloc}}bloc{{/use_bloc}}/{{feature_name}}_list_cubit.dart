import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature_name}}_list_state.dart';

class {{feature_name.pascalCase()}}ListCubit extends Cubit<{{feature_name.pascalCase()}}ListState> {

  {{feature_name.pascalCase()}}ListCubit() : super(const {{feature_name.pascalCase()}}ListState(""));

  bool _isCanLoadMore = false;
  int _currentPage = 1;
  final int _pageSize = 20;

  Future<void> onLoadInitData() async {
    try {
      _isCanLoadMore = false;

      emit(state.copyWith(
        loadDataStatus: AppLoadStatus.loading
      ));

      await Future.delay(const Duration(seconds: 1));      

      _isCanLoadMore = true; // TODO: - Change that with yours logic

      emit(state.copyWith(
        loadDataStatus: AppLoadStatus.success
      ));
      success?.call();
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(
        loadDataStatus: AppLoadStatus.failure
      ));
    }
  }

  Future<void> onRefreshData() async {
    try {
      _isCanLoadMore = false;
      _currentPage = 1;

      emit(state.copyWith(
        refreshLoadStatus: AppLoadStatus.loading
      ));

      await Future.delay(const Duration(seconds: 1));      

      _isCanLoadMore = true; // TODO: - Change that with yours logic

      emit(state.copyWith(
        refreshLoadStatus: AppLoadStatus.success
      ));
      success?.call();
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(
        refreshLoadStatus: AppLoadStatus.failure
      ));
    }
  }

  Future<void> onLoadMoreData() async {
    try {
      if (!_isCanLoadMore) return;

      _isCanLoadMore = false;
      _currentPage += 1;

      emit(state.copyWith(
        loadMoreDataStatus: AppLoadStatus.loading
      ));

      await Future.delay(const Duration(seconds: 1));      

      _isCanLoadMore = true; // TODO: - Change that with yours logic

      emit(state.copyWith(
        loadMoreDataStatus: AppLoadStatus.success
      ));
      success?.call();
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(
        loadMoreDataStatus: AppLoadStatus.failure
      ));
    }
  }
}
