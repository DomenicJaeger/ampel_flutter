import 'package:flutter/material.dart';
import 'package:ampel_flutter/ampel.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context)
              .colorScheme
              .primary, // Hier könnte ein Fehler sein
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/images/ampel_rot.png'),
              const InkWell(
                onTap: schaltenAmpel();
                child: Text("schalten"),
              ),
            ],
          ), // Dateiendung hinzugefügt
        ),
      ),
    );
  }
}
