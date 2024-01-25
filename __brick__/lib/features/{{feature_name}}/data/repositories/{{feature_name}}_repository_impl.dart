import '../../domain/repositories/{{feature_name}}_repository.dart';
import '../datasource/remote_datasource/{{feature_name}}_remote_source.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository{
    final {{feature_name.pascalCase()}}RemoteSource remoteSource;
    {{feature_name.pascalCase()}}RepositoryImpl({required this.remoteSource});
}