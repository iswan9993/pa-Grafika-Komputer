class Meteor {
  float x, y, z; // Koordinat meteor
  float speed; // Kecepatan jatuh meteor
  float size; // Ukuran meteor
  color meteorColor; // Warna meteor

  Meteor(float x_, float y_, float z_, float speed_, float size_, color meteorColor_) {
    x = x_;
    y = y_;
    z = z_;
    speed = speed_;
    size = size_;
    meteorColor = meteorColor_;
  }

  void update() {
    y += speed;
    x += speed;
    if (y > height + 100 || y > 500) {
      // Jika meteor melewati batas bawah layar atau y lebih dari 500, reset posisi meteor      
      y = -500;
      x = random(0, 500);
      z = random(-800, -200);
    }
  }

  void display() {
    fill(meteorColor);
    noStroke();
    translate(x, y, z);
    sphere(size);
  }
}
