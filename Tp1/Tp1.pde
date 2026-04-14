PImage miImagen;

void setup(){
  size(800,400);
  miImagen=loadImage("virgin.jpg");
}

void draw(){
  background(10);
  image(miImagen, 0, 0, 400, 400);
  //Velo cabeza azul
    noStroke();
fill(#4f4f61);
ellipse(400 + 184, 109, 147, 120);
  //Cara y torso
  fill(#9c6844);
  rect(400 + 170 , 170, 50 , 40);
  rect(400 + 153, 205, 90, 50);
    fill(#f5c393);
    ellipse(400+196,139,90, 110);
    fill(#35130f);
    rect(588, 246, 40, 40);
    //Velo azul
    fill(#4f4f61);
    triangle(525, 68, 628, 303, 400, 382);
    triangle(645, 77, 778, 354, 618, 296);
    triangle(511, 107, 400, 382, 420, 246);
    triangle(400, 382, 633, 300, 780, 353);
    //Manga
    fill(#200d14);
    ellipse(542, 338, 50, 30);
    quad(568, 317, 602, 314, 592, 333, 562, 335);
    //Manos
      fill(#f5c393);
    ellipse(546, 322, 50, 27);
    ellipse(527,328, 25, 20);
    quad(514, 324, 517, 304, 529, 302, 524, 313);
    quad(528, 312, 534, 291, 548, 286, 538, 309);
    quad(541, 307, 553, 275, 562, 275, 553, 308);
    quad(553, 306, 566, 278, 574, 277, 562, 310);
    quad(564, 313, 590, 301, 594, 308, 571, 318);
    ellipse(400 + 256, 314, 35, 45);
quad(657, 290, 611, 279,612, 284, 645, 293);
quad(643, 296, 610, 290,612, 295, 638, 305);
quad(639, 306, 617, 298,616, 306, 638, 318);
quad(638, 321, 624, 314, 623, 322, 642, 330);
//Mesa
fill(#c59050);
quad(400, 386, 603, 387, 815, 369, 720, 345);
quad(623, 338, 635, 338, 800, 327, 800, 323);
fill(#a6653a);
beginShape();
vertex(549, 376);
vertex(626, 339);
vertex(638,339);
vertex(638, 376);
endShape();
rect(400, 387, 203, 15);
fill(#430d0d);
beginShape();
vertex(603, 387);
vertex(800, 370);
vertex(800, 386);
vertex(603, 400);
endShape();
beginShape();
vertex(638, 339);
vertex(800, 328);
vertex(800, 362);
vertex(638, 376);
endShape();
//Libro
fill(#95887a);
beginShape();
vertex(760, 326);
vertex(777, 278);
vertex(686, 324);
vertex(682, 334);
endShape();
fill(#51473f);
triangle(760, 326, 683, 318, 643, 337);
triangle(758, 330, 800, 305, 764, 318);

  textSize(30);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
}
