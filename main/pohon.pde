class Pohon {
  int pohonidx;
  color[] pohonn;
  
  int batangidx;
  color[] batang;
  
  float T1, T2, T3, T4, T5,T6,T7,T8,T9, rectX, rectY, rectWidth, rectHeight;

  Pohon() {
    T1 = 675;
    T2 = 400;
    T3 = 755;
    T4 = 715;
    T5 = 350;
    T6 = 390;
    T7 = 340;
    T8 = 370;
    T9 = 320;
    rectX = 710;
    rectY = 400;
    rectWidth = 10;
    rectHeight = 30;
    
    pohonn = new color[2];
    pohonn[0] = color(#186F65); //<>//
    pohonn[1] = color(#31503B);
    pohonidx = 0;
    
    batang = new color[2];
    batang[0] = color(#6C5F5B);
    batang[1] = color(#62372B);
    batangidx = 0;
  }
 

  void pohonNatal() {
    fill(pohonn[pohonidx]);
    triangle(T1, T2, T3, T2, T4, T5);
    triangle(T1, T6, T3, T6, T4, T7);
    triangle(T1, T8, T3, T8, T4, T9);
    fill(batang[batangidx]);
    rect(rectX, rectY, rectWidth, rectHeight);
  }
  
  void warnabatang(){
  pohonidx = (pohonidx + 1) % pohonn.length;
  batangidx = (batangidx + 1) % batang.length;
  }
  
}
