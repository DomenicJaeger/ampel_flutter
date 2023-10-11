import 'package:flutter_test/flutter_test.dart';
import 'package:ampel_flutter/ampel.dart';
import 'package:ampel_flutter/kreuzung.dart';

void main() {
  test('ampelSpielerei', () {
    Ampel ampelNord = Ampel.rot();

    expect(ampelNord.lampeRot, true);
    expect(ampelNord.lampeGelb, false);
    expect(ampelNord.lampeGruen, false);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, true);
    expect(ampelNord.lampeGelb, true);
    expect(ampelNord.lampeGruen, false);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, false);
    expect(ampelNord.lampeGelb, false);
    expect(ampelNord.lampeGruen, true);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, false);
    expect(ampelNord.lampeGelb, true);
    expect(ampelNord.lampeGruen, false);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, true);
    expect(ampelNord.lampeGelb, false);
    expect(ampelNord.lampeGruen, false);
  });

  test('ampelLeer', () {
    Ampel ampelNord = Ampel();

    expect(ampelNord.lampeRot, false);
    expect(ampelNord.lampeGelb, false);
    expect(ampelNord.lampeGruen, false);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, true);
    expect(ampelNord.lampeGelb, false);
    expect(ampelNord.lampeGruen, false);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, true);
    expect(ampelNord.lampeGelb, true);
    expect(ampelNord.lampeGruen, false);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, false);
    expect(ampelNord.lampeGelb, false);
    expect(ampelNord.lampeGruen, true);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, false);
    expect(ampelNord.lampeGelb, true);
    expect(ampelNord.lampeGruen, false);
  });

  test('ampelgruen', () {
    Ampel ampelNord = Ampel.gruen();

    expect(ampelNord.lampeRot, false);
    expect(ampelNord.lampeGelb, false);
    expect(ampelNord.lampeGruen, true);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, false);
    expect(ampelNord.lampeGelb, true);
    expect(ampelNord.lampeGruen, false);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, true);
    expect(ampelNord.lampeGelb, false);
    expect(ampelNord.lampeGruen, false);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, true);
    expect(ampelNord.lampeGelb, true);
    expect(ampelNord.lampeGruen, false);

    ampelNord.schaltenAmpel();

    expect(ampelNord.lampeRot, false);
    expect(ampelNord.lampeGelb, false);
    expect(ampelNord.lampeGruen, true);
  });

  test('kreuzungTest', () {
    Kreuzung zufallsdorferKreuz = Kreuzung();

    expect(zufallsdorferKreuz.ampel1.lampeGruen, true);
    expect(zufallsdorferKreuz.ampel1.lampeRot, false);
    expect(zufallsdorferKreuz.ampel2.lampeGruen, false);
    expect(zufallsdorferKreuz.ampel2.lampeRot, true);

    zufallsdorferKreuz.schaltenKreuzung();

    expect(zufallsdorferKreuz.ampel1.lampeGruen, false);
    expect(zufallsdorferKreuz.ampel1.lampeRot, true);
    expect(zufallsdorferKreuz.ampel2.lampeGruen, true);
    expect(zufallsdorferKreuz.ampel2.lampeRot, false);

    zufallsdorferKreuz.schaltenKreuzung();

    expect(zufallsdorferKreuz.ampel1.lampeGruen, false);
    expect(zufallsdorferKreuz.ampel1.lampeRot, true);
    expect(zufallsdorferKreuz.ampel2.lampeGruen, false);
    expect(zufallsdorferKreuz.ampel2.lampeRot, true);
    expect(zufallsdorferKreuz.ampel3.lampeGruen, true);
    expect(zufallsdorferKreuz.ampel3.lampeRot, false);

    zufallsdorferKreuz.schaltenKreuzung();

    expect(zufallsdorferKreuz.ampel1.lampeGruen, false);
    expect(zufallsdorferKreuz.ampel1.lampeRot, true);
    expect(zufallsdorferKreuz.ampel4.lampeGruen, true);
    expect(zufallsdorferKreuz.ampel4.lampeRot, false);

    zufallsdorferKreuz.schaltenKreuzung();

    expect(zufallsdorferKreuz.ampel1.lampeGruen, true);
    expect(zufallsdorferKreuz.ampel1.lampeRot, false);
  });
}
