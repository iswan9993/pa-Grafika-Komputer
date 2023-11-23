class windmill {
int windbidx;
color[] windb;

int windpidx;
color[] windp;

int windtidx;
color[] windt;

int windaidx;
color[] winda;

int windjidx;
color[] windj;



windmill(){

  
 windb = new color[2];
 windb[0] = color(#F2E8C6);
 windb[1] = color(#6C4E3D);
 windbidx = 0;
 
 windp = new color[2];
 windp[0] = color(#DE8F5F);
 windp[1] = color(#342015);
 windpidx = 0;
 
 windt = new color[2];
 windt[0] = color(#DAD4B5);
 windt[1] = color(#644A3A);
 windtidx = 0;
 
 winda = new color[2];
 winda[0] = color(#E25E3E);
 winda[1] = color(#7C3D19);
 windaidx = 0;
 
 windj = new color[2];
 windj[0] = color(#FFF0CE);
 windj[1] = color(#F7D90C);
 windjidx = 0;

}

void gambarmill(){
 
  // Badan windmill
  fill(windb[windbidx]);
  quad(995, 430, 1065, 430, 1050, 320, 1010, 320);
  
  // Jendela windmill
  fill(windj[windjidx]);
  circle(1030, 370, 15);
  
  // Pintu windmill
  fill(windp[windpidx]);
  rect(1022, 410, 15, 20);
  
  // Atap windmill
  fill(windt[windtidx]);
  rect(999, 325, 60, 20);
  
  fill(winda[windaidx]);
  arc(1029, 330, 65, 80, PI, TWO_PI);
  
  // Kincir windmill
  fill(windp[windpidx]);
  float angle = radians(frameCount % 360);
  for (int i = 0; i < 4; i++) {
    pushMatrix();
    translate(1029, 318);
    rotate(angle + radians(90 * i));
    rect(0, 0, 8, bladeLength);
    popMatrix();
  }

}

void warnamill(){
  windbidx = (windbidx + 1) % windb.length;
  windpidx = (windpidx + 1) % windp.length;
  windtidx = (windtidx + 1) % windt.length;
  windaidx = (windaidx + 1) % winda.length;
  windjidx = (windjidx + 1) % windj.length;

}

}
