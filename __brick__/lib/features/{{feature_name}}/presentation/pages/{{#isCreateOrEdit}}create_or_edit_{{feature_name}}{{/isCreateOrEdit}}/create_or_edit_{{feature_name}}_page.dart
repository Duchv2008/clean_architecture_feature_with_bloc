import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view/{{feature_name}}_view.dart';

class CreateOrEditView{{feature_name.pascalCase()}}Page extends StatelessWidget {
  final {{feature_name.pascalCase()}}Arguments arguments;

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const CreateOrEditView{{feature_name.pascalCase()}}Page());
  }

  const CreateOrEditView{{feature_name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => {{feature_name.pascalCase()}}Cubit(),
        child: const {{feature_name.pascalCase()}}View(),
      ),
    );
  }
}
