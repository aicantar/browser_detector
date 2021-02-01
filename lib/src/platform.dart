import 'enums.dart';
import 'matched_product.dart';

/// Represents a platform matched by the user agent.
class Platform extends MatchedProduct<Platforms> {
  /// True if the platform is Windows.
  bool get isWindows => type == Platforms.windows;

  /// True if the platform is macOS.
  bool get isMacOS => type == Platforms.macOS;

  /// True if the platform is Linux.
  bool get isLinux => type == Platforms.linux;

  /// True if the platform is iOS.
  bool get isIOS => type == Platforms.iOS;

  /// True if the platform is Android.
  bool get isAndroid => type == Platforms.android;

  /// True if the platform is unknown.
  bool get isUnknown => type == Platforms.unknown;

  const Platform(Platforms type, UserAgentMatcherCallback matcherCallback)
      : super(type, matcherCallback);

  /// Construct an unknown platform.
  const Platform.unknown() : super(Platforms.unknown, null);
}

/// Microsoft Windows.
class Windows extends Platform {
  const Windows() : super(Platforms.windows, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return RegExp(r'windows\s', caseSensitive: false).hasMatch(userAgent);
  }
}

/// Apple macOS.
class MacOS extends Platform {
  const MacOS() : super(Platforms.macOS, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return RegExp(r'macintosh', caseSensitive: false).hasMatch(userAgent);
  }
}

/// Linux.
class Linux extends Platform {
  const Linux() : super(Platforms.linux, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return RegExp(r'linux', caseSensitive: false).hasMatch(userAgent) &&
        !RegExp(r'android', caseSensitive: false).hasMatch(userAgent);
  }
}

/// Apple iOS.
class IOS extends Platform {
  const IOS() : super(Platforms.iOS, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return RegExp(r'iphone|ipod', caseSensitive: false).hasMatch(userAgent);
  }
}

/// Apple iPadOS.
class IPadOS extends Platform {
  const IPadOS() : super(Platforms.iPadOS, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return RegExp(r'ipad', caseSensitive: false).hasMatch(userAgent) &&
        RegExp(r'cpu os', caseSensitive: false).hasMatch(userAgent);
  }
}

/// Google Android.
class Android extends Platform {
  const Android() : super(Platforms.android, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return !RegExp(r'like android', caseSensitive: false).hasMatch(userAgent) &&
        RegExp(r'android', caseSensitive: false).hasMatch(userAgent);
  }
}
