part '{{feature_name}}_cubit.dart';

@freezed
class CreateOrEdit{{feature_name.pascalCase()}}State
    with _$CreateOrEdit{{feature_name.pascalCase()}}State {
  const factory {{feature_name.pascalCase()}}State({
    @Default(AppLoadStatus.idle) AppLoadStatus loadDataStatus,
  }) = _CreateOrEdit{{feature_name.pascalCase()}}State;
}
