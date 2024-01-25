import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '{{feature_name}}_state.dart';

class CreateOrEdit{{feature_name.pascalCase()}}Cubit extends Cubit<CreateOrEdit{{feature_name.pascalCase()}}State> {

  CreateOrEdit{{feature_name.pascalCase()}}Cubit() : super(const CreateOrEdit{{feature_name.pascalCase()}}State(""));

}
