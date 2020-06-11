import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../contantes.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  static const flashState = 'FLASH OFF';
  static const cameraState = 'BACK CAMERA';
  QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: kBackgroundColor,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: 300,
                overlayColor: Color.fromRGBO(00, 63, 41, 80),
              ),
            ),
          ),
//          Expanded(
//            flex: 1,
//            child: FittedBox(
//              fit: BoxFit.contain,
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  Text('This is the result of scan:'),
//                  Text('$qrText'),
//                ],
//              ),
//            ),
//          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        print(scanData);
        SnackBar(content: Text(scanData));
        // TODO: verif si le code resto existe
        if(scanData == "1234567890"){
          Navigator.pushReplacementNamed(context, '/inputNumber');
        }
      });
    });
  }
}
