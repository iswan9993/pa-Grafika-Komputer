class Rumah {
    
  int lampuIdx1;
  color[] lampu1;
  
   int lamputidx;
   color[] lamput;
   
   int lampupidx;
   color[] lampup;
   
   int lampuaidx;
   color[] lampua;
   
   int lampusidx;
   color[] lampus;

  Rumah(){
    
  
    
    lampu1 = new color[2];
    lampu1[0] = color(#FFF0CE);
    lampu1[1] = color(#F7D90C);
    lampuIdx1 = 0;
    
    lamput = new color[2];
    lamput[0] = color(#F9B572);
    lamput[1] = color(#895C33);
    lamputidx = 0;
    
    lampup = new color[2];
    lampup[0] = color(#DE8F5F);
    lampup[1] = color(#342015);
    lampupidx = 0;
    
    lampua = new color[2];
    lampua[0] = color(#FFF0CE);
    lampua[1] = color(#6C4E3D);
    lampuaidx = 0;
    
    lampus = new color[2];
    lampus[0] = color(#F4BF96);
    lampus[1] = color(#5A4031);
    lampusidx = 0;
  }
  
  
  void rumah() {
    // Bagian atas depan rumah
    fill(lamput[lamputidx]);
    triangle(780, 370, 832, 320, 884, 370);
    
    // Atap rumah
    fill(lampua[lampuaidx]);
    quad(832, 320, 884, 370, 987, 370, 935, 320);
    
    // Jendela depan rumah
    fill(lampu1[lampuIdx1]);
    circle(830, 360, 20);
    
     //Cerobong asap rumah
    //fill(lampua[lampuaidx]);
    //rect(872, 299, 30, 6);
    pushMatrix();
    fill(lamput[lamputidx]);
    translate(890, 325);
    box(25, 35, 25);
    popMatrix();
    
    // Bagian depan rumah
    fill(lamput[lamputidx]);
    rect(780, 370, 104, 60);
    
    // Pintu rumah
    fill(lampup[lampupidx]);
    rect(820, 400, 20, 30);
    
    // Bagian samping rumah
    fill(lampus[lampusidx]);
    rect(883, 370, 104, 60);
    
    // Jendela rumah
    fill(lampu1[lampuIdx1]);
    rect(895, 385, 20, 20);
    fill(lampu1[lampuIdx1]);
    rect(925, 385, 20, 20);
    fill(lampu1[lampuIdx1]);
    rect(955, 385, 20, 20);
    
  }
  
  void jendela(){
   lampuIdx1 = (lampuIdx1 + 1) % lampu1.length;
   lamputidx = (lamputidx + 1) % lamput.length;
   lampupidx = (lampupidx + 1) % lampup.length;
   lampuaidx = (lampuaidx + 1) % lampua.length;
   lampusidx = (lampusidx + 1) % lampus.length;
  
  }
  
}
