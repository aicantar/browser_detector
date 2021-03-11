/// Should return true if it matches the given [userAgent].
typedef UserAgentMatcherCallback = bool Function(String userAgent);

/// Represents an arbitrary product matched by the user agent.
abstract class MatchedProduct<T> {
  final T type;
  final UserAgentMatcherCallback? matcherCallback;

  /// Creates a MatchedProduct of the given [type] and provides it with a
  /// [matcherCallback]. This callback is called to determine whether the
  /// particular product matches user agent.
  const MatchedProduct(
    this.type,
    this.matcherCallback,
  );
}
