import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/src/core/helpers/theme_helper.dart';
import 'src/event_voting/presentation/pages/voting_view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
}
