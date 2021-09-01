class Brick {
  float pX;
  float pY;
  int opacity;
  float size;
  float distance;  
  int breakable;
  Brick (float px, float py, int op,float si, float dis, int br){
    pX = px;
    pY = py;
    opacity = op;
    size = si;
    distance = dis;
    breakable = br;
  }
  
  void drawing(){
    
    //"If the ball hit the bricks..."
    //BRAKE!!!
    if(pX > ball.pX-25-5 && pX < ball.pX+25+5 && pY > ball.pY-10-10 && pY < ball.pY+10+10){ //near..
      opacity-=35;
      if(opacity <=0){ opacity =0; }
      
      if(pX > ball.pX-25 && pX < ball.pX+25 && pY > ball.pY-10-10 && pY < ball.pY+10+10){ //near..
        size-=1;
      }
      else {
        size-=2.5;
      }
      if(size <=0){ size =0; }
      distance+=2;
      
    }
    //CHANEGE THE BALL'S DIRECTUION!!!
    if(pX > ball.pX-25-5 && pX < ball.pX+25+5 && pY > ball.pY-10 && pY < ball.pY+10){//equal..
      if(breakable ==1){
         ball.direction *= -1;
      }
      breakable=0;
    }
    noFill();
    stroke(#44B5E8,opacity);
    rectMode(CENTER);
    rect(pX,pY,50.1,20.1);
    
    fill(120+random(-50,50),210+random(-50,50),255);
    noStroke();
    
    
    rect(pX-20-1*distance,pY-5-1.5*distance,size,size);
    rect(pX-10-1*distance,pY-5-1.5*distance,size,size);
    rect(pX-00-0*distance,pY-5-1.5*distance,size,size);
    rect(pX+10+1*distance,pY-5-1.5*distance,size,size);
    rect(pX+20+1*distance,pY-5-1.5*distance,size,size);
    
    rect(pX-20-1*distance,pY+5+1.5*distance,size,size);
    rect(pX-10-1*distance,pY+5+1.5*distance,size,size);
    rect(pX-00-0*distance,pY+5+1.5*distance,size,size);
    rect(pX+10+1*distance,pY+5+1.5*distance,size,size);
    rect(pX+20+1*distance,pY+5+1.5*distance,size,size);
  }
}