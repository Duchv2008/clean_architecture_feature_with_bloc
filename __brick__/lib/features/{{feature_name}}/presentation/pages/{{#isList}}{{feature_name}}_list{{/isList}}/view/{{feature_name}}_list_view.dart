import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/{{feature_name}}_list_cubit.dart';
import '../bloc/{{feature_name}}_list_state.dart';

class {{feature_name.pascalCase()}}ListView extends StatefulWidget {
  const {{feature_name.pascalCase()}}ListView({super.key});

  @override
  State<{{feature_name.pascalCase()}}ListView> createState() => _{{feature_name.pascalCase()}}ListViewState();
}

class _{{feature_name.pascalCase()}}ListViewState extends State<{{feature_name.pascalCase()}}ListView> {

  late {{feature_name.pascalCase()}}ListCubit _cubit;
  final _verticalScrollController = ScrollController();

  @override
  void initState() {
    _cubit = context.read<{{feature_name.pascalCase()}}ListCubit>();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _cubit.onLoadInitData();

      _verticalScrollController.addListener(_verticalScrollListener);
    });
  }

  void _verticalScrollListener() {
    final maxScroll = _verticalScrollController.position.maxScrollExtent;
    final currentScroll = _verticalScrollController.position.pixels;
    if (maxScroll - currentScroll <= AppConfigs.scrollThreshold) {
      _cubit.onLoadMoreData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _buildBodyWidget(),
    );
  }

  Widget _buildBodyWidget() {
    return BlocBuilder<{{feature_name.pascalCase()}}ListCubit, {{feature_name.pascalCase()}}ListState>(
      buildWhen: (prev, current) =>
          prev.loadDataStatus != current.loadDataStatus,
      builder: (context, state) {
        final isLoading = state.loadDataStatus == AppLoadStatus.loading;
        if (isLoading) {
          return const ListViewShimmer();
        }

        return BlocBuilder<{{feature_name.pascalCase()}}ListCubit, {{feature_name.pascalCase()}}ListState>(
          builder: (context, state) {
            final isEmptyDate = true; // TODO: - Fix that
            if (isEmptyDate) {
              return EmptyListWidget(
                onRefresh: () async {
                  return _cubit.onRefreshData();
                },
              );
            }
            
            return RefreshIndicator(
              onRefresh: () async {
                return _cubit.onRefreshData();
              },
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(); // TODO: - Change that
                },
                itemCount: phonebookList.length,
              ),
            );
        );
      },
    );
  }
}