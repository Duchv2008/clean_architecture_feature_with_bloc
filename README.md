# 🏗️ clean_architecture_feature

# Dependency lib
Make sure yours project use [flutter_bloc](https://pub.dev/packages/flutter_bloc) and [freezed](https://pub.dev/packages/freezed)

# Installation

Make sure you have Mason installed. If you don't have it installed, follow
the [installation guide](https://docs.brickhub.dev/category/getting-started) to get started.

Once you have Mason installed, you can add the clean_architecture_feature brick to your Mason
configuration by adding the following code to your **mason.yaml** file:

```yaml
bricks:
  clean_architecture_feature: 0.0.3
```

# Usage

To use the clean_architecture_feature brick, you can run the following command in your terminal:

```sh
mason make clean_architecture_feature_with_bloc
# OR
mason make clean_architecture_feature_with_bloc --use_bloc true --test_dir false --feature_name user
```

## Variables ✨

The following table outlines the variables that can be used when generating a new feature folder:

| Variable       | Description                | Required | Type     |
|----------------| -------------------------- |----------| -------- |
| `feature_name` | 🏷️ Name of the feature              | `Yes`    | `string` |
| `use_bloc`     | 🧱 Determine if you need BLoC for the feature or not              | `Yes`    | `bool` |
| `test_dir`     | 📁 Determine if you need a test directory structure              | `No`     | `bool` |

## Output 📦

The generated folder architecture will look like this:

```
lib/
├── features
│   ├── featureName
│   │   ├── data
│   │   │   ├── datasources
│   │       │   ├── feature_name_remot_source.dart
│   │   │   ├── models
│   │       │   ├── feature_name_network.dart
│   │   │   └── repositories
│   │       │   ├── feature_name_repository_impl.dart
│   │   ├── domain
│   │   │   ├── repositories
│   │       │   ├── feature_name_repository.dart
│   │   │   └── usecases
│   │       │   ├── feature_name_use_case.dart
│   │   └── presentation
│   │       ├── bloc
│   │       │   ├── feature_name_bloc.dart
│   │       ├── widget
│   │       │   ├── feature_name_widget.dart

 ```

## Contributors 💻

Jigar Fumakiya - [Linkedin](https://www.linkedin.com/in/jigar-fumakiya-3080b8b7/)

#### if you found this brick helpful, please consider showing your support by giving it a ⭐ on GitHub. Your support is greatly appreciated! 🙏🎉 Additionally, feel free to let me know if you have any suggestions for additional features.

## License 🍀

    MIT License
    Copyright (c) 2023 Jigar Fumakiya

    Permission is hereby granted, free of charge, to any person obtaining a copy 
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
