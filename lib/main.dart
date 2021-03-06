import 'package:catcher/catcher_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'package:multiservice/ui/splash/splash_screen.dart';

void main() {
  Stetho.initialize();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    CatcherOptions releaseOptions = CatcherOptions(
      DialogReportMode(),
      [
        EmailManualHandler(["er.sorbh@gmail.com"])
      ],
    );
    Catcher(MyApp(), debugConfig: releaseOptions, releaseConfig: releaseOptions);
  });
  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MultiService',
       navigatorKey: Catcher.navigatorKey,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
