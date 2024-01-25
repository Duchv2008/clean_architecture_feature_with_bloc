import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

Future run(HookContext context) async {
  context.logger.info('pre gen');

  final logger = context.logger;

  final viewTypes = List.from(context.vars['view_type']);

  context.logger.info('viewTypes $viewTypes!');

  final isList = viewTypes.contains("list");
  final isDetail = viewTypes.contains("detail");
  final isCreateOrEdit = viewTypes.contains("createOrEdit");
  final isEmpty = viewTypes.contains("empty");

  context.vars = {
    ...context.vars,
    'isList': isList,
    'isDetail': isDetail,
    'isCreateOrEdit': isCreateOrEdit,
    'isEmpty': isEmpty,
  };
}
