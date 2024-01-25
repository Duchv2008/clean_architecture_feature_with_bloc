part '{{feature_name}}_cubit.dart';

@freezed
class {{feature_name.pascalCase()}}ListState
    with _${{feature_name.pascalCase()}}ListState {
  const factory {{feature_name.pascalCase()}}State({
    @Default(AppLoadStatus.idle) AppLoadStatus loadDataStatus,
    @Default(AppLoadStatus.idle) AppLoadStatus refreshLoadStatus,
    @Default(AppLoadStatus.idle) AppLoadStatus loadMoreDataStatus,
  }) = _{{feature_name.pascalCase()}}ListState;
}
