import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view/{{feature_name}}_view.dart';

class {{feature_name.pascalCase()}}DetailPage extends StatelessWidget {
  final {{feature_name.pascalCase()}}Arguments arguments;

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const {{feature_name.pascalCase()}}DetailPage());
  }

  const {{feature_name.pascalCase()}}DetailPage({
    super.key, 
    required this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final formType = FormTypeExtension.generateFrom(arguments.formId)!;
        return {{feature_name.pascalCase()}}DetailCubit(
          {{feature_name}}Id: arguments.{{feature_name}}Id,
        );
      },
      child: Scaffold(
        appBar: AppBar(),
        body: BlocProvider(
          create: (context) => {{feature_name.pascalCase()}}DetailCubit(),
          child: const {{feature_name.pascalCase()}}DetailView(),
        ),
      ),
    );
  }
}
