part 'create_or_edit_{{feature_name}}_cubit.dart';

part 'create_or_edit_{{feature_name}}_state.freezed.dart';

@freezed
class CreateOrEdit{{feature_name.pascalCase()}}State with _$CreateOrEdit{{feature_name.pascalCase()}}State {
  const factory CreateOrEdit{{feature_name.pascalCase()}}State({
    @Default(AppLoadStatus.idle) AppLoadStatus loadDataStatus,
  }) = _CreateOrEdit{{feature_name.pascalCase()}}State;
}
