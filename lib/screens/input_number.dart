import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../contantes.dart';

class InputNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icon/help-circle.svg',
                semanticsLabel: 'Help Logo'),
            tooltip: 'Help',
            onPressed: () {},
          ),
        ], iconTheme: IconThemeData(color: kBackgroundColor), elevation: 0),
        body: Column(
          children: <Widget>[
            SizedBox(height: 75),
            Center(
                child: Text('Mon numero est',
                    style: TextStyle(
                      color: kBackgroundColor,
                      fontSize: 35,
                    ))),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: kBackgroundColor, width: 3.0),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
