import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{feature_name.pascalCase()}}View extends StatefulWidget {
  const {{feature_name.pascalCase()}}View({super.key});

  @override
  State<{{feature_name.pascalCase()}}View> createState() => _{{feature_name.pascalCase()}}ViewState();
}

class _{{feature_name.pascalCase()}}ViewState extends State<{{feature_name.pascalCase()}}View> {

  late {{feature_name.pascalCase()}}Cubit _cubit;

  @override
  void initState() {
    _cubit = context.read<{{feature_name.pascalCase()}}Cubit>();
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