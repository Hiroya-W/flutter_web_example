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

```bash
fvm flutter run -t lib/widgetbook.dart -d chrome
```
