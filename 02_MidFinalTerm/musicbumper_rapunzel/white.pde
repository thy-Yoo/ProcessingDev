void white(){
  float a = 0;
  float angle = (2*PI) / 200;
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