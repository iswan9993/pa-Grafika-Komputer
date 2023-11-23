windmill windmill1;
matahari warnamatahari1;
matahari warnamatahari;
matahari matahari1;
matahari matahari;
gunung gunungKiri;
Meteor meteor;
boolean isNightMode = false;
Pohon Pohon1;
Rumah rumah11;
float bladeLength = 60;
float busX = -100; // Inisialisasi posisi awal bus
float busSpeedPerSecond = -400; // Kecepatan bus per detik

boolean isSunClicked = false;
import processing.sound.*;
SoundFile telolet;

int backgroundIdx = 0;
color[] backgrounds; 


int tamanidx;
color[] taman;

// Buat ngepause bus nya
void keyPressed() {
  if (key == 'p' || key == 'P') { // P atau p untuk jeda
    if (looping) {
      noLoop(); // Jeda animasi
    } else {
      loop(); // Lanjutkan animasi
    }
  }
  if (key == 'm' || key == 'M') { // M atau m untuk jeda
    if (isNightMode == false) {
      isNightMode = true; // nyalakan meteor
    } else if (isNightMode == true) {
      isNightMode = false; // matikan meteor 
    }
  }
  
  if (key==CODED) {
    if (keyCode==LEFT) {      
      telolet.pause();
    } else if (keyCode==RIGHT) {      
      telolet.play();
    }
  }    
}

void setup(){
   
  size(1200, 800, P3D);  
  //warna backgroundnya warna awal 255 dan akhir 0
  backgrounds = new color[2];
  backgrounds[0] = color(135,206,250); // Warna latar belakang pertama yaitu putih
  backgrounds[1] = color(0, 0, 0); // Warna latar belakang kedua yaitu hitam
  
  
 //inisialisasi objek matahari
   matahari1 = new matahari();   

  gunungKiri = new gunung();
 
  Pohon1 = new Pohon();
  
  rumah11 = new Rumah();
  
  warnamatahari = new matahari();
  
  warnamatahari1 = new matahari();
  
  windmill1 = new windmill();
    
  meteor = new Meteor(0, -200, -200, 5, 10, color(255, 255, 0));
  
  taman = new color[2];
  taman[0] = color(#A8DF8E);
  taman[1] = color(#262924);
     
  //untuk lampu windmill
   
  telolet = new SoundFile(this, "./sound basuri V3.mp3");
      
}

void draw(){
  background(backgrounds[backgroundIdx]);
  
  fill(taman[tamanidx]);                 
  rect(0, 400, 1200, 150);
  textSize(20); // Ukuran teks 20
  text("x: " + mouseX + "\n y: " + mouseY, 5, 20);
  
  
  // Menggambar matahari
 matahari1.mth();
  // Bukit sebelah kiri
 gunungKiri.gunung1();
  // Bukit sebelah kanan
 

  // Menggambar pohon
Pohon1.pohonNatal();

 //Rumah22.lampujendela();
  
  // Menggambar rumah
  rumah11.rumah();
  // Menggambar windmill
   windmill1.gambarmill();
   
  // Mengupdate posisi busX dengan pergerakan per detik
  float second = 1.0 / 60; // Waktu antara frame dalam detik
  busX += busSpeedPerSecond * second;
  
  // Jika bus melewati batas layar, kembalikan ke posisi awal
  if (busX < -1200) {
    busX = width; // Atur posisi awal di dalam layar
  }
  
  drawRoad();
  drawBusStop();
  drawBus(busX);    
  
  if (isNightMode) {
    meteor.update();
    meteor.display();
  }
}

void drawRoad() {
   hint(DISABLE_DEPTH_TEST); // Menonaktifkan pengujian kedalaman
   // Gambar tiang bus stop
  fill(100, 100, 100); // Warna abu-abu
  noStroke(); // Menghilangkan garis pada tiang bus stop
  rect(73, 300, 10, 500); // titik koordinat y untuk tiang
  
  // Menggambar persegi di atas tiang
  fill(#085eab); // Warna biru
  noStroke(); // Menghilangkan garis pada persegi
  rect(53, 290, 50, 60); // titik koordinat dan ukuran persegi
  
  // Menggambar muka depan bis dengan kaca dan lampu
  fill(255); // Warna putih untuk kaca
  rect(58, 310, 40, 20); // Kaca muka depan
  fill(255, 255, 0); // Warna kuning untuk lampu
  ellipse(65, 325, 10, 10); // Lampu kiri
  ellipse(90, 325, 10, 10); // Lampu kanan

  // Menggambar jalan
  beginShape();
  fill(#878787); // Warna jalan
  noStroke(); // Menghilangkan stroke pada jalan 
  vertex(0, 525); // Titik awal jalan (kiri)
  vertex(1200, 525); // Titik akhir jalan (kanan)
  vertex(1200, 800); // Sudut kanan bawah
  vertex(0, 800); // Sudut kiri bawah
  endShape(CLOSE);
  
  // Menggambar trotoar
  strokeWeight(20); // Ketebalan garis
  stroke(0); // Menghilangkan garis
  strokeCap(SQUARE); // Mengatur ujung garis menjadi kotak
  line(0, 525, 67, 525); // garis pembatas satu dari kiri
  stroke(255); // Warna hitam
  line(62, 525, 150, 525); // garis pembatas kedua 
  stroke(0); // Warna putih
  line(150, 525, 233, 525); // garis pembatas ketiga 
  stroke(255); // Warna hitam
  line(233, 525, 316, 525); // garis pembatas keempat 
  stroke(0); // Warna putih
  line(316, 525, 399, 525); // garis pembatas kelima dari
  stroke(255); // Warna hitam
  line(399, 525, 482, 525); // garis pembatas keenam 
  stroke(0); // Warna putih
  line(482, 525, 565, 525); // garis pembatas ketujuh 
  stroke(255); // Warna hitam
  line(565, 525, 648, 525); // garis pembatas kedelapan 
  stroke(0); // Warna putih
  line(648, 525, 731, 525); // garis pembatas kesembilan 
  stroke(255); // Warna hitam
  line(731, 525, 814, 525); // garis pembatas kesepuluh 
  stroke(0); // Warna putih
  line(814, 525, 897, 525); // garis pembatas kesebelas 
  stroke(255); // Warna hitam
  line(897, 525, 980, 525); // garis pembatas kedua belas 
  stroke(0); // Warna putih
  line(980, 525, 1063, 525); // garis pembatas ketiga belas 
  stroke(255);  // Warna hitam
  line(1063, 525, 1146, 525); // garis pembatas keempat belas 
  stroke(0); // Warna putih
  line(1146, 525, 1229, 525); // garis pembatas kelima belas
   hint(ENABLE_DEPTH_TEST); // Mengaktifkan pengujian kedalaman
  
  // Menggambar garis tengah jalan
  stroke(255); // Warna garis
  strokeWeight(10); // Ketebalan garis
  line(0, 670, 140, 670); // garis tengah jalan pertama dari kiri
  line(215, 670, 375, 670); // garis tengah jalan kedua 
  line(450, 670, 610, 670); // garis tengah jalan ketiga  
  line(685, 670, 845, 670); // garis tengah jalan keempat
  line(920, 670, 1080, 670); // garis tengah jalan ketiga  
  line(1155, 670, 1315, 670); // garis tengah jalan keempat
  
}

void drawBusStop(){
   hint(DISABLE_DEPTH_TEST); // Menonaktifkan pengujian kedalaman
  fill(255); // warna putih
  rect(240, 320, 20, 190); //tiang kiri
  rect(600, 320, 20, 190); //tiang kanan
  fill(0); // warna hitam
  rect(200, 300, 460, 20); //atap
  fill(100, 100, 100); // Warna abu-abu
  noStroke(); //menghilangkan garis tepi
  rect(200, 476, 460, 40);//lantai
  fill(0); //warna hitam
  rect(290, 426, 40, 50); //kursi 1
  rect(370, 426, 40, 50); //kursi 2
  rect(450, 426, 40, 50); //kursi 3
  rect(530, 426, 40, 50); //kursi 4
  rect(265, 415, 330, 5);
  color glassColor = color(0, 0, 255, 150);
  fill(glassColor);
  noStroke();
  rect(280, 340, 300, 75);
  fill(0);
  rect(265, 340, 330, 5);
  hint(ENABLE_DEPTH_TEST); // Mengaktifkan pengujian kedalaman
  
}

void drawBus(float x) {

  // Menggambar bus
  noStroke();
  fill(150, 0, 0); // Warna merah
  rect(665 + x, 400, 500, 150, 20);

  // Menggambar roda depan
  fill(0);
  ellipse(782 + x, 562, 55, 55);
  fill(255);
  ellipse(782 + x, 562, 30, 30);

  // Menggambar roda belakang
  fill(0);
  ellipse(1055 + x, 562, 55, 55);
  fill(255);
  ellipse(1055 + x, 562, 30, 30);

  // Bikin pintu bus
  fill(#e4e8e9);
  rect(694 + x, 410, 70, 130, 10); // Pintu pertama
  rect(955 + x, 410, 70, 130, 10); // Pintu kedua

  // Menggambar jendela pertama
  fill(#e4e8e9);
  rect(770 + x, 410, 180, 65, 10);

  // Menggambar jendela kedua
  fill(#e4e8e9);
  rect(1032 + x, 410, 125, 65, 10);

  // Menggambar kaca depan
  fill(#e4e8e9);
  rect(665 + x, 410, 20, 80, 5);

  // Menggambar lampu bus
  fill(#aeaeb6);
  rect(665 + x, 504, 15, 15, 2); // Lampu kiri
  fill(#f48b47);
  rect(678 + x, 504, 8, 15, 2); // Lampu kanan

}



//fungsi untuk ganti backroundnya 
void GantiBackground(){
  backgroundIdx = (backgroundIdx + 1) % backgrounds.length;
  //print("ganti background");

}

void warnaMatahari(){
   windmill1.warnamill();
   tamanidx = (tamanidx + 1) % taman.length;
   matahari1.bulan();
   rumah11.jendela();
   gunungKiri.warnagunung();
   Pohon1.warnabatang();
}


// memeriksa apaka cursur berada dalam jangkauan circle matahari untuk dapat di klik 
void mouseClicked() {
 if (warnamatahari1.overmouse()) {
    isSunClicked = true;
    GantiBackground(); 
    warnaMatahari();          
  }
}
