import 'package:ampel_flutter/ampel.dart';

class Kreuzung {
  Ampel ampel1 = Ampel.gruen();
  Ampel ampel2 = Ampel.rot();
  Ampel ampel3 = Ampel.rot();
  Ampel ampel4 = Ampel.rot();

  //vorläufige schalten funktion
  void schaltenKreuzung() {
    if (ampel1.lampeGruen) {
      ampel1 = Ampel.rot();
      ampel2 = Ampel.gruen();
      ampel3 = Ampel.rot();
      ampel4 = Ampel.rot();
    } else if (ampel2.lampeGruen) {
      ampel1 = Ampel.rot();
      ampel2 = Ampel.rot();
      ampel3 = Ampel.gruen();
      ampel4 = Ampel.rot();
    } else if (ampel3.lampeGruen) {
      ampel1 = Ampel.rot();
      ampel2 = Ampel.rot();
      ampel3 = Ampel.rot();
      ampel4 = Ampel.gruen();
    } else if (ampel4.lampeGruen) {
      ampel1 = Ampel.gruen();
      ampel2 = Ampel.rot();
      ampel3 = Ampel.rot();
      ampel4 = Ampel.rot();
    } else {
      ampel1 = Ampel();
      ampel2 = Ampel();
      ampel3 = Ampel();
      ampel4 = Ampel();
    }
  }
}
