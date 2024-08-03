
class Config {

  /// Generated by Flangapp PRO 03-08-2024 08:00
  /// App UID: b69fb52c-8ded-5259-5674-76424a2d1741
  /// Version: 1.0.6
  /// API server: https://api.appifay.eu/

  /// *** Main settings *** ///
  static String apiUrl = "https://api.appifay.eu/";
  static String appUid = "b69fb52c-8ded-5259-5674-76424a2d1741";
  static String oneSignalPushId = "";

  /// *** Splashscreen settings *** ///
  // Background color (any HEX color)
  static String splashBackgroundColor = "#FFFFFF";
  // Text color (any HEX color)
  static String splashTextColor = "#ffffff";
  // Is image background
  static bool splashIsBackgroundImage = false;
  // Background image name
  static String splashBackgroundImage = "splash_screen.png";
  // Tagline
  static String splashTagline = "";
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