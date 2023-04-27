class AppConfig {
  factory AppConfig() => instance;
  AppConfig._internal() {
    openAiApiKey = const String.fromEnvironment('OPEN_AI_API_KEY');
  }

  static final AppConfig instance = AppConfig._internal();

  String openAiApiKey = '';
}
