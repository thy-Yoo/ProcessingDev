void drawsound(){
  
  
      int step = player.bufferSize() / 100;
      float g;
   
  for(int i=0; i < player.bufferSize() - step; i+=step) {
      //float dis = 8+ 21 * player.mix.get(i);
      //int randomColor = (int) random(150,255);
      //rotate(PI/9);translate(rpositionX,rpositionY);
      //if(player.mix.get(i) > 0){
      noStroke();
      //fill(255,randomColor,randomColor);
      //ellipse(-dis,0,0.3+player.mix.get(i) * 1.35 ,0.3+player.mix.get(i) * 1.35);
      
      //candle ("candle4.png");*******************************************************************************************
      //fill(#FFE54D,1);
      //fill(#FF874B,2);
      fill(#D37400,2);
      ellipse(153,150, 3+player.mix.get(i)*15,14+player.mix.get(i)*15);//1.
      ellipse(197.5,149.3, 3.7+player.mix.get(i)*15,11.2+player.mix.get(i)*15);//2R
      ellipse(120,148, 3+player.mix.get(i)*14,10+player.mix.get(i)*14);//2L
      ellipse(89.7,141, 4+player.mix.get(i)*13,10+player.mix.get(i)*13);//3L
      ellipse(236.5,136, 3+player.mix.get(i)*13,8.5+player.mix.get(i)*13);//3R
      ellipse(82,134, 2+player.mix.get(i)*12,7+player.mix.get(i)*12);//4L
      ellipse(103,129, 2+player.mix.get(i)*12,6+player.mix.get(i)*12);//5L
      ellipse(118,128, 2.2+player.mix.get(i)*12,7+player.mix.get(i)*12);//6L
      ellipse(143,120, 2.2+player.mix.get(i)*12,7+player.mix.get(i)*12);//7L
      ellipse(218.5,125, 2.5+player.mix.get(i)*12,6.5+player.mix.get(i)*12);//4R
      ellipse(172,124, 2.5+player.mix.get(i)*11,6+player.mix.get(i)*11);//4R
      //candle7 ("candle7.png");*******************************************************************************************
      //fill(#E82E00,1);
      fill(#FFE54D,1);
      ellipse(434,258.5, 1.5+player.mix.get(i)*19,3.2+player.mix.get(i)*19);//1.
      ellipse(439,268.5, 1.5+player.mix.get(i)*19,3.2+player.mix.get(i)*19);//1.
      ellipse(465,253, 1.5+player.mix.get(i)*19,3.2+player.mix.get(i)*19);//1.
      ellipse(487,247, 1.5+player.mix.get(i)*19,3.2+player.mix.get(i)*19);//1.
      ellipse(490,265, 1.5+player.mix.get(i)*19,3.2+player.mix.get(i)*19);//1.
      
      
      g = player.mix.get(i)*10;
      //g2 = map(eRadius, 20, 80, 60, 255) / 80;
      
      pushMatrix();
      firefire(g);
      translate(-20,0);
      firefire(g);
      translate(20,0);
      firefire(g);
      translate(20,0);
      firefire(g);
      translate(20,0);
      firefire(g);
      popMatrix();
      }    
    
}

void firefire(float g){
      pushMatrix();
      noStroke();
      fill(#FFC800,(int)g);
      translate(1050,410);
      if(g>0){
        scale(g*0.2);
      }
      beginShape();
      vertex(0, 0);
      bezierVertex(0, 0, -35, 0, -30-g, -30); //point, anker, point
      bezierVertex(-40-g, -40, -30, -40, 0, -70-g);
      bezierVertex(10, -60-g, 40, -40, 30+g, -30); 
      bezierVertex(30+g, -20, 35, 0, 0, 0); 
      endShape();
      popMatrix();
  
}