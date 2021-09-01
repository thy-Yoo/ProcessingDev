void redPoint(float x, float y){
  fill(#FF0000);
  ellipse(x, y, 10,10);
  text("x:"+x+"y:"+y,x,y);
  fill(#00FF00);
  //text("angle:"+tree2.angle+"dist"+tree.dist,x,y+10);
}
void greenPoint(float x, float y){
  fill(#00FF00);
  ellipse(x,y, 10,10);
  fill(0);
  textSize(10);
  
}

void checkPoint_RED(){  
  fill(#FF0000);
  ellipse(-470,40,5,5);
  text("-470,40",-470,40);
  
  ellipse(-460,-30,5,5);
  text("-460,-30",-460,-30);
  
  ellipse(-340,-100,5,5);
  text("-340,-100",-340,-100);
  
  ellipse(-180,-135,5,5);
  text("-180,-135",-180,-135);
  
  ellipse(40,-135,5,5);
  text("40,-135",40,-135);
  
  ellipse(240,-135,5,5);
  text("240,-135",240,-135);
  
  ellipse(390,-80,5,5);
  text("390,-80",390,-80);
  
  ellipse(466,-35,5,5);
  text("466,-35",466,-35);
 
  ellipse(0,0,5,5);
  text("0,0",0,0);
}

void checkPoint_GREEN(){
  //pre.
  pushMatrix();
  translate(0,-10);
  
    fill(#00FF00);
    ellipse(60,590,5,5);
    text("60,590",60,590);
    
    ellipse(70,520,5,5);
    text("70,520",70,520);
    
    ellipse(190,450,5,5);
    text("190,450",190,450);
    
    ellipse(350,415,5,5);
    text("350,415",350,415);
    
    ellipse(570,415,5,5);
    text("570,415",570,415);
    
    ellipse(770,415,5,5);
    text("770,415",770,415);
    
    ellipse(920,470,5,5);
    text("920,470",920,470);
    
    ellipse(996,515,5,5);
    text("996,515",996,515);
   
    ellipse(530,550,5,5);
    text("530,550",530,550);
   popMatrix();
  
}