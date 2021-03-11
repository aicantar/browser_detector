import 'enums.dart';
import 'matched_product.dart';

/// Microsoft Edge user agent signature regex.
final _edgeRegex = RegExp(r'\sedg\/|edg([ea]|ios)', caseSensitive: false);

/// Represents a browser matched by the user agent.
class Browser extends MatchedProduct<Browsers> {
  /// True if the browser is Chrome.
  bool get isChrome => type == Browsers.chrome;

  /// True if the browser is Firefox.
  bool get isFirefox => type == Browsers.firefox;

  /// True if the browser is Safari.
  bool get isSafari => type == Browsers.safari;

  /// True if the browser is Microsoft Edge.
  bool get isEdge => type == Browsers.edge;

  /// True if the browser is unknown.
  bool get isUnknown => type == Browsers.unknown;

  const Browser(
    Browsers type,
    UserAgentMatcherCallback matcherCallback,
  ) : super(type, matcherCallback);

  /// Construct an unknown browser.
  const Browser.unknown() : super(Browsers.unknown, null);
}

/// Google Chrome.
class Chrome extends Browser {
  const Chrome() : super(Browsers.chrome, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return !_edgeRegex.hasMatch(userAgent) &&
        RegExp(r'chrome|crios|crmo', caseSensitive: false).hasMatch(userAgent);
  }
}

/// Mozilla Firefox.
class Firefox extends Browser {
  const Firefox() : super(Browsers.firefox, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return RegExp(r'firefox|fxios', caseSensitive: false).hasMatch(userAgent);
  }
}

/// Apple Safari.
class Safari extends Browser {
  Safari() : super(Browsers.safari, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return !_edgeRegex.hasMatch(userAgent) &&
        RegExp(r'safari', caseSensitive: false).hasMatch(userAgent);
  }
}

/// Microsoft Edge.
class Edge extends Browser {
  const Edge() : super(Browsers.edge, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return _edgeRegex.hasMatch(userAgent);
  }
}
