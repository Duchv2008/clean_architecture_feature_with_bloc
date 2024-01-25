import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view/{{feature_name}}_view.dart';

class CreateOrEdit{{feature_name.pascalCase()}}Arguments {
  CreateOrEdit{{feature_name.pascalCase()}}Arguments();
}

class CreateOrEdit{{feature_name.pascalCase()}}Page extends StatelessWidget {
  final CreateOrEdit{{feature_name.pascalCase()}}Arguments arguments;

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const CreateOrEdit{{feature_name.pascalCase()}}Page());
  }

  const CreateOrEdit{{feature_name.pascalCase()}}Page({
    super.key, 
    required this.arguments,
  });

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
