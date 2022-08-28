class Balle {
  float x;
  float y;
  int diametre;
  color couleur;

  Balle(float iX, float iY, int iDiametre, color iCouleur) {
    x = iX;
    y = iY;
    diametre = iDiametre;
    couleur = iCouleur;
  }

  void affichage() {
    ellipseMode(CENTER);
    fill(couleur);
    ellipse(x, y, diametre, diametre);
  }

  void monter() {
    if ( y > 0 )
      y = y-10;
    affichage();
  }


  void descendre() {
    if ( y < 600 )
      y = y+10;
    affichage();
  }


  void droite() {
    if ( x < 800 )
      x = x+10;
    affichage();
  }


  void gauche() {
    if ( x > 0 )
      x = x-10;
    affichage();
  }

  void lancer() {
    x=(int) random(770);
    y=(int) random(440);

    this.affichage();
  }
}