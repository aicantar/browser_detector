import 'package:browser_detector/src/enums.dart';
import 'package:test/test.dart';

import 'package:browser_detector/browser_detector.dart';

import 'user_agent.dart';

void main() {
  // Chrome
  test('can detect Chrome on Windows', () {
    final detector = BrowserDetector(UserAgent.chromeWindows);

    expect(detector.browser.type, Browsers.chrome);
    expect(detector.platform.type, Platforms.windows);
  });

  test('can detect Chrome on macOS', () {
    final detector = BrowserDetector(UserAgent.chromeMacOS);

    expect(detector.browser.type, Browsers.chrome);
    expect(detector.platform.type, Platforms.macOS);
  });

  test('can detect Chrome on Linux', () {
    final detector = BrowserDetector(UserAgent.chromeLinux);

    expect(detector.browser.type, Browsers.chrome);
    expect(detector.platform.type, Platforms.linux);
  });

  test('can detect Chrome on Android', () {
    final detector = BrowserDetector(UserAgent.chromeAndroid);

    expect(detector.browser.type, Browsers.chrome);
    expect(detector.platform.type, Platforms.android);
  });

  test('can detect Chrome on iOS', () {
    final detector = BrowserDetector(UserAgent.chromeIOS);

    expect(detector.browser.type, Browsers.chrome);
    expect(detector.platform.type, Platforms.iOS);
  });

  // Firefox
  test('can detect Firefox on Windows', () {
    final detector = BrowserDetector(UserAgent.firefoxWindows);

    expect(detector.browser.type, Browsers.firefox);
    expect(detector.platform.type, Platforms.windows);
  });

  test('can detect Firefox on macOS', () {
    final detector = BrowserDetector(UserAgent.firefoxMacOS);

    expect(detector.browser.type, Browsers.firefox);
    expect(detector.platform.type, Platforms.macOS);
  });

  test('can detect Firefox on Linux', () {
    final detector = BrowserDetector(UserAgent.firefoxLinux);

    expect(detector.browser.type, Browsers.firefox);
    expect(detector.platform.type, Platforms.linux);
  });

  test('can detect Firefox on Android', () {
    final detector = BrowserDetector(UserAgent.firefoxAndroid);

    expect(detector.browser.type, Browsers.firefox);
    expect(detector.platform.type, Platforms.android);
  });

  test('can detect Firefox on iOS', () {
    final detector = BrowserDetector(UserAgent.firefoxIOS);

    expect(detector.browser.type, Browsers.firefox);
    expect(detector.platform.type, Platforms.iOS);
  });

  // Safari
  test('can detect Safari on macOS', () {
    final detector = BrowserDetector(UserAgent.safariMacOS);

    expect(detector.browser.type, Browsers.safari);
    expect(detector.platform.type, Platforms.macOS);
  });

  test('can detect Safari on iOS', () {
    final detector = BrowserDetector(UserAgent.safariIOS);

    expect(detector.browser.type, Browsers.safari);
    expect(detector.platform.type, Platforms.iOS);
  });

  // Edge
  test('can detect Edge on Windows', () {
    final detector = BrowserDetector(UserAgent.edgeWindows);

    expect(detector.browser.type, Browsers.edge);
    expect(detector.platform.type, Platforms.windows);
  });

  test('can detect Edge on macOS', () {
    final detector = BrowserDetector(UserAgent.edgeMacOS);

    expect(detector.browser.type, Browsers.edge);
    expect(detector.platform.type, Platforms.macOS);
  });

  test('can detect Edge on Android', () {
    final detector = BrowserDetector(UserAgent.edgeAndroid);

    expect(detector.browser.type, Browsers.edge);
    expect(detector.platform.type, Platforms.android);
  });

  test('can detect Edge on iOS', () {
    final detector = BrowserDetector(UserAgent.edgeIOS);

    expect(detector.browser.type, Browsers.edge);
    expect(detector.platform.type, Platforms.iOS);
  });
}
