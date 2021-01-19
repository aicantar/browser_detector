import 'package:test/test.dart';

import 'package:browser_detector/browser_detector.dart';

import 'user_agent.dart';

void main() {
  // Chrome
  test('can detect Chrome on Windows', () {
    expect(BrowserDetector(UserAgent.chromeWindows).browser.isChrome, true);
  });

  test('can detect Chrome on macOS', () {
    expect(BrowserDetector(UserAgent.chromeMacOS).browser.isChrome, true);
  });

  test('can detect Chrome on Linux', () {
    expect(BrowserDetector(UserAgent.chromeLinux).browser.isChrome, true);
  });

  test('can detect Chrome on Android', () {
    expect(BrowserDetector(UserAgent.chromeAndroid).browser.isChrome, true);
  });

  test('can detect Chrome on iOS', () {
    expect(BrowserDetector(UserAgent.chromeIOS).browser.isChrome, true);
  });

  // Firefox
  test('can detect Firefox on Windows', () {
    expect(BrowserDetector(UserAgent.firefoxWindows).browser.isFirefox, true);
  });

  test('can detect Firefox on macOS', () {
    expect(BrowserDetector(UserAgent.firefoxMacOS).browser.isFirefox, true);
  });

  test('can detect Firefox on Linux', () {
    expect(BrowserDetector(UserAgent.firefoxLinux).browser.isFirefox, true);
  });

  test('can detect Firefox on Android', () {
    expect(BrowserDetector(UserAgent.firefoxAndroid).browser.isFirefox, true);
  });

  test('can detect Firefox on iOS', () {
    expect(BrowserDetector(UserAgent.firefoxIOS).browser.isFirefox, true);
  });

  // Safari
  test('can detect Safari on macOS', () {
    expect(BrowserDetector(UserAgent.safariMacOS).browser.isSafari, true);
  });

  test('can detect Safari on iOS', () {
    expect(BrowserDetector(UserAgent.safariIOS).browser.isSafari, true);
  });

  // Edge
  test('can detect Edge on Windows', () {
    expect(BrowserDetector(UserAgent.edgeWindows).browser.isEdge, true);
  });

  test('can detect Edge on macOS', () {
    expect(BrowserDetector(UserAgent.edgeMacOS).browser.isEdge, true);
  });

  test('can detect Edge on Android', () {
    expect(BrowserDetector(UserAgent.edgeAndroid).browser.isEdge, true);
  });

  test('can detect Edge on iOS', () {
    expect(BrowserDetector(UserAgent.edgeIOS).browser.isEdge, true);
  });
}
