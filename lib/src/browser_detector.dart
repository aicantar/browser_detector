import 'package:browser_detector/src/environment/fake_native_user_agent.dart'
    if (dart.library.html) 'package:browser_detector/src/environment/native_user_agent.dart';

import 'browser.dart';
import 'engine.dart';
import 'platform.dart';

/// Detects browser, engine and platform the app is running on based on the user
/// agent string.
class BrowserDetector {
  /// Known browsers.
  Iterable<Browser> _browsers = [
    Chrome(),
    Firefox(),
    Safari(),
    Edge(),
  ];

  /// Known platofrms.
  Iterable<Platform> _platforms = [
    Windows(),
    MacOS(),
    Linux(),
    IOS(),
    IPadOS(),
    Android(),
  ];

  /// Known engines.
  Iterable<Engine> _engines = [
    Blink(),
    Gecko(),
    WebKit(),
  ];

  /// Private [Browser] instance.
  late final Browser _browser;

  /// Private [Platform] instance.
  late final Platform _platform;

  /// Private [Engine] instance.
  late final Engine _engine;

  /// Detected [Browser].
  Browser get browser => _browser;

  /// Detected [Platform].
  Platform get platform => _platform;

  /// Detected [Engine].
  Engine get engine => _engine;

  /// Construct a BrowserDetector. If the [userAgent] is passed, the detector
  /// will not retrieve the value from the environment and use the parameter
  /// instead.
  BrowserDetector([String? userAgent]) {
    final actualUserAgent = userAgent ?? nativeUserAgent;

    _browser = _browsers.firstWhere(
      (browser) => browser.matcherCallback?.call(actualUserAgent) ?? false,
      orElse: () => Browser.unknown(),
    );

    _platform = _platforms.firstWhere(
      (platform) => platform.matcherCallback?.call(actualUserAgent) ?? false,
      orElse: () => Platform.unknown(),
    );

    _engine = _engines.firstWhere(
      (engine) => engine.matcherCallback?.call(actualUserAgent) ?? false,
      orElse: () => Engine.unknown(),
    );
  }
}
