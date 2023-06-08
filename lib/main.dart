import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/di/injection.dart';
import 'package:voting_app/src/core/helpers/theme_helper.dart';
import 'src/event_voting/presentation/pages/voting_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Event Voting App',
          debugShowCheckedModeBanner: false,
          theme: getApplicationTheme(),
          home: const VotingViewPage(),
        );
      },
    );
  }

  void initialize() async {
    await configureInjection();
  }
}
