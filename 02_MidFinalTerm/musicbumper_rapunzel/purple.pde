void purple(){
  for(int i = 0; i < 250; i++){
       float b = fft.getBand(i);
       float x = random(-b, b) + width1/2;
       float y = i*2;
       fill(#00EAD5, 45);
       ellipse(x, y, b, b);
       fill(#600083, 128);
       rect(i*2, height1 - b, 5, b);
  }
}