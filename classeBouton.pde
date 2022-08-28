class Bouton {
  int x, y ;
  String label;
  color couleur ;

  Bouton(int iX, int iY, String ilabel, color iCouleur) {
    x=iX;
    y=iY ;
    label=ilabel;
    couleur=iCouleur;
  }

  void display() {
    //noStroke();
    rectMode(CENTER);
    fill(couleur) ;
    rect(x, y, 60, 40) ;
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(20);
    text(label, x, y, 0);
  }

  boolean isClic() {
    if ((this.x-30<mouseX)&&(mouseX<x+30)&&(y-20<mouseY)&&(mouseY<y+20)) {
      return true;
    } else {
      return false;
    }
  }
}