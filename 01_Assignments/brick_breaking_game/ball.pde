class Ball {
  float pX;
  float pY;
  int direction;
  
  Ball (float px, float py, int di){
    pX = px;
    pY = py;
    direction = di;
  }
  
  void drawing(){
    //the position
    //with wall.**************************************
    if(pY<10){
      direction=down;
    }
    if(pX<10){ //leftWall.
        controler.dis=0;
        wall.right=0;
        wall.left=pY;     
    }
    else if(pX>590){ //rightWall.
      controler.dis=0;
      wall.left=0;
      wall.right=pY;
    }
    pX+=wall.left/300;
    pX-=wall.right/300;
   
    
    //with controler.*********************************
    if(pX>controler.pX-30 && pX<controler.pX+30 && pY>330){
      direction=up;
      controler.dis = controler.pX-pX;
    }
    pX -= controler.dis/80;
    
    //with brick.************************************
    
    
    
    //ball.
    if(direction==up){
      pY--;
    }
    else if(direction==down){
      pY++;
    }
    
    fill(255,0,0);
    noStroke();
    ellipse(pX, pY, 20,20);
  }
}