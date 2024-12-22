
class Config {

  /// Generated by Flangapp PRO 22-12-2024 15:54
  /// App UID: 5fb103a4-23a6-3ed9-ae43-a781128dff8c
  /// Version: 1.0.12
  /// API server: https://api.appifay.eu/

  /// *** Main settings *** ///
  static String apiUrl = "https://api.appifay.eu/";
  static String appUid = "5fb103a4-23a6-3ed9-ae43-a781128dff8c";
  static String oneSignalPushId = "";

  /// *** Splashscreen settings *** ///
  // Background color (any HEX color)
  static String splashBackgroundColor = "#FFFFFF";
  // Text color (any HEX color)
  static String splashTextColor = "#000000";
  // Is image background
  static bool splashIsBackgroundImage = false;
  // Background image name
  static String splashBackgroundImage = "splash_screen.png";
  // Tagline
  static String splashTagline = "Соларни панели, соларни инвертори и др.";
  // Delay display (seconds)
  static int splashDelay = 3;
  // Logo image name
  static String splashLogoImage = "splash_logo.png";
  // Display logo
  static bool splashIsDisplayLogo = true;

  /// *** Offline localization settings *** ///
  static String offlineErrorMessage = "Няма интернет връзка";
  static String offlineImage = "dino.png";

  /// *** Subscribe need settings *** ///
  static String subscribeErrorTitle = "App not available";
  static String subscribeErrorMessage = "This app may have been removed or your administrator may need to renew your subscription";
}