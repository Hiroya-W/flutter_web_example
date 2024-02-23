# Example for Flutter Web

## Initial Setup

### Dart

```bash
asdf add plugin dart
asdf install dart 3.3.0
asdf local dart 3.3.0
```

### Flutter

Flutter SDK

```bash
dart pub global activate fvm
fvm install 3.19.0
fvm use 3.19.0
```

Create Flutter App

```bash
fvm flutter create .
```

Run Flutter App


```bash
fvm flutter run -d chrome
```

## Setup(after Inital Setup)

```bash
fvm install
```

## Setup Firebase

```bash
asdf install nodejs 20.11.1
asdf local nodejs 20.11.1
npm install -g firebase-tools
```

```bash
firebase login
firebase init hosting
```

## How to use Widgetbook

Widgetbook用の `lib/widgetbook.directories.g.dart` は `build_runner` を使って自動的に生成するため、以下のコマンドを実行しておきます。

```bash
flutter pub run build_runner watch
```

次に、`src/components` にWidgetを作成します。

作成したWidgetをWidgetbookから確認するため、以下のコマンドを実行します。

```bash
fvm flutter run -t lib/widgetbook.dart -d chrome
```
