import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature_name}}_entity.freezed.dart';
part '{{feature_name}}_entity.g.dart';

@freezed
class {{feature_name.pascalCase()}}Entity with _${{feature_name.pascalCase()}}Entity {
  const {{feature_name.pascalCase()}}Entity._();

  @JsonSerializable(explicitToJson: true)
  const factory {{feature_name.pascalCase()}}Entity({
    required String id,
  }) = _{{feature_name.pascalCase()}}Entity;

  factory {{feature_name.pascalCase()}}Entity.fromJson(Map<String, Object?> json) =>
      _${{feature_name.pascalCase()}}EntityFromJson(json);
}
