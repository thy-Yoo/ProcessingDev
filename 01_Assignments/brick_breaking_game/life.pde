class Life {
  PImage img;
  int pX;
  int liveNum;
  Life (PImage im, int px, int li){
    img = im;
    pX = px;
    liveNum = li;
  }
  
  void drawing(){
    //with Bottom..*****************************************8
    if(ball.pY > 370){
      ball.direction = down;
      liveNum--;
      ball.pY = 320;
      ball.pX = mouseX;
      ball.direction = up;
    }
    
    //img = loadImage("heart.png");
    for(int i=0; i < liveNum ;i++){
      image(img, pX-20*i, 20, 18, 18);
    }
    //image(img, pX+20, 20,18,18);
    //image(img, pX+40, 20,18,18);
   // image(img, pX+60, 20,18,18);
    //image(img, pX+80, 20,18,18);
  }
}