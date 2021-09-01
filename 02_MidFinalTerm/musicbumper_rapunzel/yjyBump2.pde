public int index2=0;

void yjyBump2(){
  index++;
  if(index>600){ index=0;}

  pushMatrix();
   int step = player.bufferSize() / 100;
   fill(255);
   textSize(20);
   text("yjyBump2",-40,0);
   if(index%20!=0){
   translate(random(0,0),random(0,0));
   }
   
   
  for(int i=0; i < player.bufferSize() - step; i+=step) {
    float dis;
    float mapIs = map(eRadius, 20, 80, 60, 255) * 1.2;
    dis = mapIs * 0.12;
    if(mapIs > 241){ dis = 0.3* mapIs;}
    rotate(PI/9);
    if(player.mix.get(i) > 0){
    noStroke();
    fill(#FFB700,mapIs/2);
    fill(255,random(0,200),255);
    ellipse(-dis,0, player.mix.get(i) * 5 ,player.mix.get(i) * 5);
    }
  }
  
  popMatrix();
  
}