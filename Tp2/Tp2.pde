PImage bg, img;
float x1 = 0;
float x2;
float velocidad = 2;
float x;
float y;
int estado = 0;
int frameInicioEspera;

void setup() {
  size(640, 480);
  bg = loadImage("Fondo.png");
  x2 = 640;
  img = loadImage("Portada.png");
  x = img.width;
  y = (400 - img.height) / 2;
}

void draw() {
  image(bg, x1, 0, 640, 480);
  image(bg, x2, 0, 640, 480);
  x1 -= velocidad;
  x2 -= velocidad;
  if (x1 <= -640) {
    x1 = 640;
  }
  if (x2 <= -640) {
    x2 = 640;
  }
  if (estado == 0) {
    x += 5;
    float destinoX = (200 - img.width) / 2;
    if (x >= destinoX) {
      x = destinoX;
      estado = 1;
      frameInicioEspera = frameCount;
    }
  } else if (estado == 1) {
    if (frameCount - frameInicioEspera > 180) {
      estado = 2;
    }
  } else if (estado == 2) {
    x += 5;
    if (x > width) {
      estado = 3;
    }
  }
  if (estado < 3) {
    image(img, x, y);
  }
}
