class gunung {
color[] bukit;
int bukitIdx ;
color[] bukitK;
int bukitKIdx ;


gunung(){
bukit = new color[2];
bukit[0] = color(#7AA874);
bukit[1] = color(#262924);
bukitIdx = 0;  

bukitK = new color[2];
bukitK[0] = color(#609966);
bukitK[1] = color(#353B2F);
bukitKIdx = 0; 
}
void gunung1(){
fill(bukit[bukitIdx]);
  beginShape();
  curveVertex(350, 800); 
  curveVertex(503, 400);
  curveVertex(752, 260);
  curveVertex(950, 200);
  curveVertex(1089, 276);
  curveVertex(1247, 400);
  curveVertex(1550, 800);
  endShape(CLOSE);


  fill(bukitK[bukitKIdx]);
  beginShape();
  curveVertex(-250, 800); 
  curveVertex(-17, 400);
  curveVertex(232, 260);
  curveVertex(430, 200);
  curveVertex(569, 276);
  curveVertex(727, 400);
  curveVertex(1030, 800);
  endShape(CLOSE);

}
void warnagunung(){
  bukitKIdx = (bukitKIdx + 1) % bukitK.length;
  bukitIdx = (bukitIdx + 1) % bukit.length;
}
}
