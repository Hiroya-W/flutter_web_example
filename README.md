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

## Firebase Local Emulator Suite でローカルで開発する

> Firebase Local Emulator Suite は、アプリのビルドとテストをローカルで行うことのできる、デベロッパー向けの高度なツールセットです。
> https://firebase.google.com/docs/emulator-suite?hl=ja

起動すると、以下のURLからEmulator UIを表示することが出来ます。

Emulator UI: http://127.0.0.1:4000/

| Emulator  | Host:Port    | View in Emulator UI             |
| --------- | ------------ | ------------------------------- |
| Firestore | 0.0.0.0:8080 | http://127.0.0.1:4000/firestore |
| Hosting   | 0.0.0.0:5002 | n/a                             |

Hostingでは、`build/web` ディレクトリ内のコンテンツを表示することが出来ます。
`fvm flutter build` した後の表示の確認に活用してください。

### Dockerを使って起動する場合

Dockerを使う場合は、`docker`ディレクトリに`compose.yml`を配置しているのでこれを利用します。
また、以降のコマンドは全て`docker`ディレクトリ内で実行することを想定しています。

```bash
cd docker
```

Firebaseにログインします。

```bash
docker compose run --rm firebase firebase login --no-localhost
```

URLが表示されるのでURLへブラウザからアクセスします。
ブラウザからログインし、表示されるAuthorization codeをターミナルへ入力してログインは完了です。

Emulatorを起動する場合は以下のコマンドを実行します。

```bash
docker compose up -d
```

Emulatorを停止する場合は以下のコマンドを実行します。

```bash
docker compose down
```

### Dockerを使わない場合

Dockerを使わなくても、JavaがインストールされたPCであればEmulatorを起動することが出来ます。

```bash
firebase emulators:start
```
