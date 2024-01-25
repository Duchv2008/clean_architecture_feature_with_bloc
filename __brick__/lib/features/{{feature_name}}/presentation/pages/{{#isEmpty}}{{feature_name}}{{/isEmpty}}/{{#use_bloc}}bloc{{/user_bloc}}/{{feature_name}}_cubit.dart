import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '{{feature_name}}_state.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {

  {{feature_name.pascalCase()}}Cubit() : super(const {{feature_name.pascalCase()}}State(""));

}
