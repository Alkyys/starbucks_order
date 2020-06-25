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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: Builder(
            builder: (context) => AppBar(actions: <Widget>[
              IconButton(
                  tooltip: 'Help',
                  onPressed: () {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Help')));
                  },
                  icon: Container(
                    child: SvgPicture.asset('assets/icon/help-circle.svg',
                        semanticsLabel: 'Help Logo', fit: BoxFit.contain),
                  )),
            ], iconTheme: IconThemeData(color: kBackgroundColor), elevation: 0),
          ),
        ),
        body: MyCustomForm());
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 75),
          Center(
              child: Text('Mon numero est',
                  style: TextStyle(
                    color: kBackgroundColor,
                    fontSize: 35,
                  ))),
          SizedBox(height: 20),
          new TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  color: kBackgroundColor,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  }),
              enabledBorder: const OutlineInputBorder(
                borderSide:
                    const BorderSide(color: kBackgroundColor, width: 3.0),
              ),
              border: const OutlineInputBorder(),
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'On dirait que tu as oublie quelque chose ...';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
