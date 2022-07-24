class Config{
  const Config._();

  static const baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'http://localhost:8080/configuration',
  );

  static const sentryDNS = String.fromEnvironment(
    'SENTRY_DNS',
    defaultValue: 'http://localhost:8080/configuration',
  );

}
