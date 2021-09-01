//PImage[] img_house = new PImage[3];
House[] house = new House[3];

class House{
  /*Field*/
  PImage img;
  int exist; //exist == 0 , No exist == 1
  int px;    //is position X
  int py;    //is position Y
  int alpha;
  int attackingWolfNum;
  boolean attackStatus;

  //Add a Constructor , Assign values in the field.
  House(PImage im, int ex, int x, int y, int a, int att, boolean attS) {
    img = im;
    exist = ex;
    px = x;
    py = y;
    alpha = a;
    attackingWolfNum = att;
    attackStatus = attS;
 
  }
  
  //Method
  
  void display() {    
    if (exist==alive) {
      alpha=255;
    }
    else if(exist==death){ 
      if(alpha>=0){
      alpha-=20;
      }
    }    
    tint(255,alpha);
    image(img, px*3,py*1.9,90,100);
  }
  
  void data(){
    translate(px*3,py*1.9);
    scale(-1,1);
    fill(0,0,255,255);
    if(exist==alive){
      text("exist=alive",0,0-110);
    }
    else if(exist==death){
      text("exist=death",0,0-110);
    }
    text("(px,py)=("+px+","+py+")", 0,0-100);
    text("alpha="+alpha, 0,0-90);
    if(attackingWolfNum==non){
      text("attacker=non",0,0-80);
    }
    else {
      text("attacker="+attackingWolfNum,0,0-80);
    }
    if(attackStatus==nonAttacked){
      text("nonAttacked",0,0-70);
    }
    else if(attackStatus==attacked){
      text("attacked",0,0-70);
    }
    scale(-1,1);
    translate(-px*3,-py*1.9);
  }
}