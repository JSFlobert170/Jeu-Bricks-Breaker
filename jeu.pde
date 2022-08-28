final color gris=#A3ADAF;
final color vert=#77EA66;
final color rouge=#F53444;


Balle balle = new Balle(100, 100, 10, 0);

Bouton up= new Bouton( 400, 450, "Up", gris);
Bouton left = new Bouton(330, 500, "Left", gris);
Bouton right = new Bouton(470, 500, "Right", gris);
Bouton down = new Bouton( 400, 500, "Down", gris);
Bouton reset = new Bouton( 600, 450, "Reset", rouge);
BoutonRond lancer = new BoutonRond( 150, 500, "Lancer", gris, 70);



void setup() {
  background(vert);
  size(800, 600);

  balle.affichage();
  up.display();
  left.display();
  right.display();
  down.display();
  reset.display();
  lancer.display();
}



void draw() {
  println(mouseX, mouseY);
}


void mouseClicked() {

  if (up.isClic()==true) balle.monter();
  if (down.isClic()==true) balle.descendre();
  if (right.isClic()==true) balle.droite();
  if (left.isClic()==true) balle.gauche();
  if (lancer.Clic()==true) balle.lancer();
  if (reset.isClic()==true) {

    background(vert);
    up.display();
    left.display();
    right.display();
    down.display();
    reset.display();
    lancer.display();

    balle.x=100;
    balle.y=100;
    balle.affichage();
  }
}