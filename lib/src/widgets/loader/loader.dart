import 'package:flutter/material.dart';
import 'package:logo_n_spinner/logo_n_spinner.dart';
import 'package:voting_app/gen/assets.gen.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LogoandSpinner(
      imageAssets: Assets.icons.appIcon.path,
      reverse: true,
      arcColor: Colors.blue,
      spinSpeed: const Duration(milliseconds: 500),
    );
  }
}
