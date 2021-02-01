import 'enums.dart';
import 'matched_product.dart';

/// Represents an engine matched by the user agent.
class Engine extends MatchedProduct<Engines> {
  /// True if the engine is Blink.
  bool get isBlink => type == Engines.blink;

  /// True if the engine is Gecko.
  bool get isGecko => type == Engines.gecko;

  /// True if the engine is Webkit.
  bool get isWebkit => type == Engines.webkit;

  const Engine(Engines type, UserAgentMatcherCallback matcherCallback)
      : super(type, matcherCallback);

  /// Construct an unknown engine.
  const Engine.unknown() : super(Engines.unknown, null);
}

/// Blink engine (Chromium and derivatives).
class Blink extends Engine {
  const Blink() : super(Engines.blink, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return RegExp(r'(apple)?webkit\/537\.36', caseSensitive: false)
        .hasMatch(userAgent);
  }
}

/// Gecko engine (Firefox).
class Gecko extends Engine {
  const Gecko() : super(Engines.gecko, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return RegExp(r'gecko', caseSensitive: false).hasMatch(userAgent) &&
        !RegExp(r'like gecko', caseSensitive: false).hasMatch(userAgent);
  }
}

/// WebKit engine (Safari and everything that runs on iOS).
class WebKit extends Engine {
  const WebKit() : super(Engines.webkit, _matcherCallback);

  static bool _matcherCallback(String userAgent) {
    return RegExp(r'(apple)?webkit', caseSensitive: false).hasMatch(userAgent);
  }
}
