class matahari {
float sunX ;
float sunY;
float sunSize;
color[] suncolor;
int colorIdx;



matahari (){
 sunX = 90;
 sunY = 90;
 sunSize = 80;
 suncolor = new color [2];
 suncolor[0] = color(#F8DE22);
 suncolor[1] = color(#CBCABF);
 colorIdx= 0;

 
 }
 
 void mth () {
    fill(suncolor[colorIdx]);
    circle(sunX, sunY, sunSize);
     
  }
  
 //void mthColor() {
 //   colorIdx = (colorIdx + 1) % suncolor.length;
 // }
  
  boolean overmouse() {
    float d = dist(mouseX, mouseY, sunX, sunY);
    return (d < sunSize / 2);
   
  }
  void bulan(){
  colorIdx = (colorIdx + 1) % suncolor.length;
  }
  
  

}
