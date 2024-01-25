part '{{feature_name}}_detail_cubit.dart';

@freezed
class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const factory {{feature_name.pascalCase()}}State({
    @Default(AppLoadStatus.idle) AppLoadStatus loadDataStatus,
  }) = _{{feature_name.pascalCase()}}State;
}
