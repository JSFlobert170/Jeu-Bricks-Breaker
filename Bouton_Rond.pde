class BoutonRond {
  int x, y ;
  String label;
  color couleur ;
  int diametre;
  BoutonRond(int iX, int iY, String ilabel, color iCouleur, int iDiametre) {
    x=iX;
    y=iY ;
    label=ilabel;
    couleur=iCouleur;
    diametre=iDiametre;
  }

  void display() {
    fill(couleur) ;
    ellipseMode(CENTER);
    ellipse(x, y, diametre, diametre);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(20);
    text(label, x, y, 0);
  }
  boolean Clic() {
    if ((this.x-30<mouseX)&&(mouseX<x+30)&&(y-35<mouseY)&&(mouseY<y+30)) {
      return true;
    } else {
      return false;
    }
  }
}