import 'package:flutter/material.dart';
import 'package:starbucksorder/services/api.dart';

import '../contantes.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupData() async {
    Api instance = Api();
    await instance.initApp();
    Navigator.pushReplacementNamed(context, '/scan',arguments: {
      'state': instance.state,
    });
  }

  @override
  void initState() {
    super.initState();
    setupData();
  }

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
