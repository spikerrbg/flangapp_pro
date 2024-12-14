import 'package:flangapp_pro/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'push_notification_service.dart';

void main() {
  runApp(const MyApp());
}
void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp();

  // Initialize the Push Notification Service
  PushNotificationService().initialize();

  // Start the Flutter app
  runApp(MyApp());
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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push Notifications Example',
      home: Scaffold(
        appBar: AppBar(title: Text('FCM Notifications')),
        body: Center(child: Text('Push Notifications Initialized')),
      ),
    );
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Handle background messages
  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(MyApp());
}