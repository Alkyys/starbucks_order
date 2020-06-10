import 'package:flutter/material.dart';

import '../contantes.dart';

class InputNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0),
      body: Center(
          child:Text('Input Number')
      ),
    );
  }
}
