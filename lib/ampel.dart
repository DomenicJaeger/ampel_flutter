class Ampel {
  bool lampeRot = false;
  bool lampeGelb = false;
  bool lampeGruen = false;
  int ampelPhaseIndex = 0;

  Ampel([
    this.lampeRot = false,
    this.lampeGelb = false,
    this.lampeGruen = false,
  ]);

  Ampel.rot() {
    lampeRot = true;
  }

  Ampel.gelbrot() {
    lampeRot = true;
    lampeGelb = true;
  }

  Ampel.gelb() {
    lampeGelb = true;
  }

  Ampel.gruen() {
    lampeGruen = true;
  }

  void setLampen(bool rot, bool gelb, bool gruen) {
    lampeRot = rot;
    lampeGelb = gelb;
    lampeGruen = gruen;
  }

  void schaltenAmpel() {
    if (!lampeRot && !lampeGelb && !lampeGruen) {
      setLampen(true, false, false); //schalte auf rot wenn leer
    } else if (lampeRot && !lampeGelb && !lampeGruen) {
      setLampen(true, true, false); //schalte auf rotgelb
    } else if (lampeRot && lampeGelb && !lampeGruen) {
      setLampen(false, false, true); //schalte auf grün
    } else if (lampeGruen && !lampeGelb && !lampeRot) {
      setLampen(false, true, false); //schalte auf gelb
    } else if (lampeGelb && !lampeGruen && !lampeRot) {
      setLampen(true, false, false); //schalte auf rot
    } else {
      setLampen(false, false, false); //auschalten
    }
  }

  //optional, war mal meine alte Idee
  void schaltenArray() {
    //erhöhe Index schalte auf nächste Ampelphase
    ampelPhaseIndex++;
    //Array mit Ampelphasen: [rot, rotgelb, gruen, gelb]
    List<List<bool>> ampelPhasen = [
      [true, false, false],
      [true, true, false],
      [false, false, true],
      [false, true, false],
    ];
    //wenn die letzte Stelle des Arrays erreicht ist springe auf die erste Stelle
    if (ampelPhaseIndex >= ampelPhasen.length) {
      ampelPhaseIndex = 0;
    }
    //Lampen basierend auf Index
    setLampen(
      ampelPhasen[ampelPhaseIndex][0],
      ampelPhasen[ampelPhaseIndex][1],
      ampelPhasen[ampelPhaseIndex][2],
    );
  }
}
