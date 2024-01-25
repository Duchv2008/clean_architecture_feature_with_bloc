import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'create_or_edit_{{feature_name}}_state.dart';

class CreateOrEdit{{feature_name.pascalCase()}}Cubit extends Cubit<CreateOrEdit{{feature_name.pascalCase()}}State> {

  CreateOrEdit{{feature_name.pascalCase()}}Cubit() : super(const CreateOrEdit{{feature_name.pascalCase()}}State());

}
