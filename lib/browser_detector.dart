library browser_detector;

export 'package:browser_detector/src/enums.dart' show Browsers;
export 'package:browser_detector/src/browser.dart' show Browser;

import 'package:browser_detector/src/browser.dart';

import 'package:browser_detector/src/fake_native_user_agent.dart'
    if (dart.library.html) 'package:browser_detector/src/native_user_agent.dart';

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

  /// Private [Browser] instance.
  Browser _browser;

  /// Detected [Browser].
  Browser get browser => _browser;

  /// Construct a BrowserDetector. If the [userAgent] is passed, the detector
  /// will not retrieve the value from the environment and use the parameter
  /// instead.
  BrowserDetector([String userAgent]) {
    final actualUserAgent = userAgent ?? nativeUserAgent;

    _browser = _browsers.firstWhere(
      (browser) => browser.matcherCallback(actualUserAgent),
      orElse: () => Browser.unknown(),
    );
  }
}
