import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateOrEdit{{feature_name.pascalCase()}}View extends StatefulWidget {
  const CreateOrEdit{{feature_name.pascalCase()}}View({super.key});

  @override
  State<CreateOrEdit{{feature_name.pascalCase()}}View> createState() => _CreateOrEditView{{feature_name.pascalCase()}}State();
}

class _CreateOrEditView{{feature_name.pascalCase()}}State extends State<CreateOrEdit{{feature_name.pascalCase()}}View> {

  late CreateOrEditView{{feature_name.pascalCase()}}Cubit _cubit;

  @override
  void initState() {
    _cubit = context.read<CreateOrEditView{{feature_name.pascalCase()}}Cubit>();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        // Something
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             // Something
          ],
        ),
      ),
    );
  }
}