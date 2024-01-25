import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '{{feature_name}}_detail_state.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {

  final String {{feature_name}}Id;

  {{feature_name.pascalCase()}}Cubit({
    required this.{{feature_name}}Id,
  }) : super(const {{feature_name.pascalCase()}}State(""));

  Future<void> onGet{{feature_name.pascalCase()}}Detail() async {
    try {
      emit(state.copyWith(
        loadDataStatus: AppLoadStatus.loading
      ));

      await Future.delay(const Duration(seconds: 1));      

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
}
