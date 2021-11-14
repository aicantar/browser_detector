# browser_detector

[![Dart](https://github.com/aicantar/browser_detector/actions/workflows/dart.yml/badge.svg)](https://github.com/aicantar/browser_detector/actions/workflows/dart.yml?query=branch%3Amaster)

Dart browser detector library. Detects popular browsers, engines and platforms by analyzing the user agent string. Safe to use with Flutter Native.

## Usage

Basic usage:

```dart
import 'package:browser_detector/browser_detector.dart';

if (BrowserDetector().browser.isSafari) {
    // do something if the browser is safari
}
```

Custom user agent string:

```dart
import 'package:browser_detector/browser_detector.dart';

final firefoxUserAgent = '...';
print(BrowserDetector(firefoxUserAgent).browser.isFirefox); // true
```

Using with dependency injection/service locator libraries (GetIt example):

```dart
final getIt = GetIt.instance;

getIt.registerLazySingleton(
    () => BrowserDetector(),
);

final detector = getIt.get<BrowserDetector>();
```

### Flutter Native

This library can be safely used with Flutter Native and won't produce any compilation errors. All `isUnknown` tests will return `true` when running in native mode.

If this library is used with a Flutter Web project, all objects (browser, platform and engine) will be detected properly.

## Mentions

Some regular expressions are taken from the [lancedickson/bowser](https://github.com/lancedikson/bowser) library. Check it out if you need the same thing but in pure JS.
