import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view/{{feature_name}}_view.dart';

class {{feature_name.pascalCase()}}ListPage extends StatelessWidget {
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const {{feature_name.pascalCase()}}ListPage());
  }

  const {{feature_name.pascalCase()}}ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => {{feature_name.pascalCase()}}ListCubit(),
        child: const {{feature_name.pascalCase()}}ListView(),
      ),
    );
  }
}
