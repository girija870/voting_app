import 'package:flutter/material.dart';
import 'package:voting_app/src/widgets/custom_app_bar.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: 'Events',
      ),
    );
  }
}
