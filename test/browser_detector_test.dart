import 'package:test/test.dart';

import 'package:browser_detector/browser_detector.dart';

import 'user_agent.dart';

void main() {
  // Chrome
  test('can detect Chrome on Windows', () {
    expect(
      BrowserDetector(UserAgent.chromeWindows).browser.type,
      Browsers.chrome,
    );
  });

  test('can detect Chrome on macOS', () {
    expect(
      BrowserDetector(UserAgent.chromeMacOS).browser.type,
      Browsers.chrome,
    );
  });

  test('can detect Chrome on Linux', () {
    expect(
      BrowserDetector(UserAgent.chromeLinux).browser.type,
      Browsers.chrome,
    );
  });

  test('can detect Chrome on Android', () {
    expect(
      BrowserDetector(UserAgent.chromeAndroid).browser.type,
      Browsers.chrome,
    );
  });

  test('can detect Chrome on iOS', () {
    expect(
      BrowserDetector(UserAgent.chromeIOS).browser.type,
      Browsers.chrome,
    );
  });

  // Firefox
  test('can detect Firefox on Windows', () {
    expect(
      BrowserDetector(UserAgent.firefoxWindows).browser.type,
      Browsers.firefox,
    );
  });

  test('can detect Firefox on macOS', () {
    expect(
      BrowserDetector(UserAgent.firefoxMacOS).browser.type,
      Browsers.firefox,
    );
  });

  test('can detect Firefox on Linux', () {
    expect(
      BrowserDetector(UserAgent.firefoxLinux).browser.type,
      Browsers.firefox,
    );
  });

  test('can detect Firefox on Android', () {
    expect(
      BrowserDetector(UserAgent.firefoxAndroid).browser.type,
      Browsers.firefox,
    );
  });

  test('can detect Firefox on iOS', () {
    expect(
      BrowserDetector(UserAgent.firefoxIOS).browser.type,
      Browsers.firefox,
    );
  });

  // Safari
  test('can detect Safari on macOS', () {
    expect(
      BrowserDetector(UserAgent.safariMacOS).browser.type,
      Browsers.safari,
    );
  });

  test('can detect Safari on iOS', () {
    expect(
      BrowserDetector(UserAgent.safariIOS).browser.type,
      Browsers.safari,
    );
  });

  // Edge
  test('can detect Edge on Windows', () {
    expect(
      BrowserDetector(UserAgent.edgeWindows).browser.type,
      Browsers.edge,
    );
  });

  test('can detect Edge on macOS', () {
    expect(
      BrowserDetector(UserAgent.edgeMacOS).browser.type,
      Browsers.edge,
    );
  });

  test('can detect Edge on Android', () {
    expect(
      BrowserDetector(UserAgent.edgeAndroid).browser.type,
      Browsers.edge,
    );
  });

  test('can detect Edge on iOS', () {
    expect(
      BrowserDetector(UserAgent.edgeIOS).browser.type,
      Browsers.edge,
    );
  });
}
