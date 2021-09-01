class Controler {
  float pX;
  float dis;//ball-controler collision distance.
  
  Controler (float px, float di){
    pX = px;
    dis = di;
  }
  
  void drawing(){
    
    fill(255);
    noStroke();
    rectMode(CENTER);
    rect(pX, 350, 60,20);
  }
}