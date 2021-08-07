import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swoc_application/presentation/pages/help_page.dart';
import 'package:swoc_application/presentation/pages/impressum_settings_page.dart';
import 'package:swoc_application/presentation/pages/new_query_page.dart';
import 'package:swoc_application/presentation/pages/query_page.dart';
import 'package:swoc_application/presentation/pages/settings_page.dart';
import 'package:swoc_application/presentation/pages/starting_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swoc UI Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => StartingPage(),
        '/settings': (context) => SettingsPage(),
        '/help': (context) => HelpPage(),
        '/impressum': (context) => ImpressumSettingsPage(),
        '/newquery': (context) => NewQueryPage(),
        '/querypage': (context) => QueryPage(),
      },
    );
  }
}
