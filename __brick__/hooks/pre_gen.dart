import 'dart:io';

import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

Future run(HookContext context) async {
  final logger = context.logger;

  final viewTypes = List.from(context.vars['view_type']);

  context.logger.info('viewTypes $viewTypes!');

  final isIndex = viewTypes.contain("list");
  final isDetail = viewTypes.contain("detail");
  final isCreateOrEdit = viewTypes.contain("createOrEdit");
  final isEmpty = viewTypes.contain("empty");

    context.vars = {
      ...context.vars,
      'isList': isList,
      'isDetail': isDetail,
      'isCreateOrEdit': isCreateOrEdit,
      'isEmpty': isEmpty,
    };
  } on Exception catch (e) {
    throw e;
  }
}
