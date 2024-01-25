/**
class {{feature_name.pascalCase()}}Exception extends CoreException {
  {{feature_name.pascalCase()}}Exception({
    required super.errorCode,
    required super.errorMessage,
    super.desc,
  });

  static {{feature_name.pascalCase()}}Exception get example {
    return {{feature_name.pascalCase()}}Exception(
      errorCode: "example_code",
      errorMessage: "Example message",
      desc: "Example desc",
    );
  }
}
*/