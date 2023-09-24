import 'package:flutter/material.dart';
import 'package:local_notification_practic/ui/noti_screen.dart';
import 'local_notification/service/flutter_local_notification.dart';


void main()async  {
 WidgetsFlutterBinding.ensureInitialized();
  LocalNotification.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  NotificationScreen(),
    );
  }


