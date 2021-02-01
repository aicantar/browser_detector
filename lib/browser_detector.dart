library browser_detector;

export 'package:browser_detector/src/enums.dart' show Browsers;
export 'package:browser_detector/src/browser.dart' show Browser;

import 'package:browser_detector/src/browser.dart';

import 'package:browser_detector/src/fake_native_user_agent.dart'
    if (dart.library.html) 'package:browser_detector/src/native_user_agent.dart';
import 'package:browser_detector/src/platform.dart';

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
    Android(),
  ];

  /// Private [Browser] instance.
  Browser _browser;

  /// Private [Platform] instance.
  Platform _platform;

  /// Detected [Browser].
  Browser get browser => _browser;

  /// Detected [Platform].
  Platform get platform => _platform;

  /// Construct a BrowserDetector. If the [userAgent] is passed, the detector
  /// will not retrieve the value from the environment and use the parameter
  /// instead.
  BrowserDetector([String userAgent]) {
    final actualUserAgent = userAgent ?? nativeUserAgent;

    _browser = _browsers.firstWhere(
      (browser) => browser.matcherCallback(actualUserAgent),
      orElse: () => Browser.unknown(),
    );

    _platform = _platforms.firstWhere(
      (platform) => platform.matcherCallback(actualUserAgent),
      orElse: () => Platform.unknown(),
    );
  }
}
