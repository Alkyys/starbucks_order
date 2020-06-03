import 'package:flutter/material.dart';

import '../contantes.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Center(
        child: new Image.asset(
          'assets/gif/logo_stabuck_loading.gif'
        ),
      ),
    );
  }
}
