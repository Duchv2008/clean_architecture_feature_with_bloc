import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{feature_name.pascalCase()}}DetailView extends StatefulWidget {
  final {{feature_name.pascalCase()}}DetailArguments arguments;

  const {{feature_name.pascalCase()}}DetailView({
    super.key,
    required this.arguments,
  });

  @override
  State<{{feature_name.pascalCase()}}DetailView> createState() => _{{feature_name.pascalCase()}}DetailViewState();
}

class _{{feature_name.pascalCase()}}DetailViewState extends State<{{feature_name.pascalCase()}}DetailView> {

  late {{feature_name.pascalCase()}}DetailCubit _cubit;

  bool get isEdit {
    return (widget.arguments.userFormRequestId ?? "").isNotEmpty &&
        widget.arguments.isReuse == false;
  }

  @override
  void initState() {
    _cubit = context.read<{{feature_name.pascalCase()}}DetailCubit>();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
       _cubit.onGet{{feature_name.pascalCase()}}Detail();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _buildBodyWidget(),
    );
  }

  Widget _buildBodyWidget() {
    return BlocBuilder<{{feature_name.pascalCase()}}DetailCubit, {{feature_name.pascalCase()}}DetailState>(
      buildWhen: (prev, current) =>
          prev.loadDataStatus != current.loadDataStatus,
      builder: (context, state) {
        final isLoading = state.loadDataStatus == AppLoadStatus.loading;
        if (isLoading) {
          return const ListViewShimmer();
        }
        return Container();
      },
    );
  }
}