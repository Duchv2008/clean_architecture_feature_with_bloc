import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/{{feature_name.snakeCase()}}_model.dart';

part '{{feature_name}}_model.freezed.dart';
part '{{feature_name}}_model.g.dart';

@freezed
class {{feature_name.pascalCase()}}Model with _${{feature_name.pascalCase()}}Model {
  const {{feature_name.pascalCase()}}Model._();

  @JsonSerializable(explicitToJson: true)
  const factory {{feature_name.pascalCase()}}Model({
    required String id,
  }) = _{{feature_name.pascalCase()}}Model;

  factory {{feature_name.pascalCase()}}Model.fromJson(Map<String, Object?> json) =>
      _${{feature_name.pascalCase()}}ModelFromJson(json);
}
