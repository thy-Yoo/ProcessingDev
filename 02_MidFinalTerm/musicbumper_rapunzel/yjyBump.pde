public int index=0;

void yjyBump(){
  index++;
  if(index>600){ index=0;} // index is adjusting the random's variations.......

  pushMatrix();
   int step = player.bufferSize() / 100;
   fill(255);
   textSize(10);
   //text("yjyBump",-40,-10);
    
    for(int i=0; i < player.bufferSize() - step; i+=step) {
      
      float dis = 8+ 21 * player.mix.get(i);
      int randomColor = (int) random(150,255);
      rotate(PI/9);//translate(rpositionX,rpositionY);
      if(player.mix.get(i) > 0){
      noStroke();
      fill(255,randomColor,randomColor,90+player.mix.get(i)*100);
      ellipse(-dis,0,0.3+player.mix.get(i) * 1.35 ,0.3+player.mix.get(i) * 1.35);
      }
  }
  
  popMatrix();
  
}