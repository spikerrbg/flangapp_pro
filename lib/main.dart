import 'package:flangapp_pro/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Request App Tracking Transparency permission
  await requestTrackingPermission();

  runApp(const MyApp());
}

// Function to request tracking permission
Future<void> requestTrackingPermission() async {
  final status = await AppTrackingTransparency.trackingAuthorizationStatus;
  if (status == TrackingStatus.notDetermined) {
    await AppTrackingTransparency.requestTrackingAuthorization();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flangapp PRO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.withOpacity(0.5)),
        useMaterial3: true,
      ),
      home: const Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
