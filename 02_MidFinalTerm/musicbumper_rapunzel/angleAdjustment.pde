void angleAdjustment(float angle){
  //white@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  float a = 0;
  //float angle = (2*PI) / 200;
  int step = player.bufferSize() / 200;
  for(int i=0; i < player.bufferSize() - step; i+=step) {
    float x = 100 + cos(a) * (40 * player.mix.get(i) + 60);
    float y = 100 + sin(a) * (40 * player.mix.get(i) + 60);
    float x2 = 100 + cos(a + angle) * (40 * player.mix.get(i+step) + 64);
    float y2 = 100 + sin(a + angle) * (40 * player.mix.get(i+step) + 64);
  line(x,y,x2,y2);
  a += angle;
  }  
}
//redpoint@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
void angleAdjustments(){
  angleAdjustment((2*PI)/200);
  fill(#FF0000);
  textSize(20);
  text("angle : 2*PI/200",20,200);
  translate(200,0);
  angleAdjustment((2*PI)/50);
  text("angle : 2*PI/50",20,200);
  translate(200,0);
  angleAdjustment((2*PI)/2);
  text("angle : 2*PI/2",20,200);
  translate(-400,200);
  angleAdjustment((2*PI)/3);
  text("angle : 2*PI/3",20,200);
  translate(200,0);
  angleAdjustment((2*PI)/4);
  text("angle : 2*PI/4",20,200);
  translate(200,0);
  angleAdjustment((2*PI)/5);
  text("angle : 2*PI/5",20,200);
  fill(255);
  textSize(40);
  text("f(BufferSize)",-250,-220);
}