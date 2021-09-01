PImage[] img_pig = new PImage[3];
PImage[] img_pig_death = new PImage[3];


Pig[] pig = new Pig[3];


class Pig {
  int px;
  int py;
  int alpha;
  int death; // 0 - alive 1 - death
  int alpha_death;

  Pig(int x, int y, int al, int de, int al_de) {
    px= x;
    py= y;
    alpha = al;
    death = de;
    alpha_death = al_de;
  }


  void pig1display() {
    if(printText==true){
      data(); 
    }
    tint(255, alpha);  
    if (death==0) {
      image(img_pig[0], px*3, py*1.9, 50, 50);
    } else if (death==1) {
      tint(255, alpha_death);
      image(img_pig_death[0], px*3, py*1.9, 90, 90);
    }    
    tint(255, 255);
  }

  void pig2display() {
    if(printText==true){
      data();    
    }
    tint(255, alpha);  
    if (death==0) {
      image(img_pig[1], px*3, py*1.9, 50, 50);
    } else if (death==1) {
      tint(255, alpha_death);
      image(img_pig_death[1], px*3, py*1.9, 90, 90);
    }    
    tint(255, 255);
  }

  void pig3display() {
    if(printText==true){
      data();  
    }
    tint(255, alpha);  
    if (death==0) {
      image(img_pig[2], px*3, py*1.9, 50, 50);
    } else if (death==1) {
      tint(255, alpha_death);
      image(img_pig_death[2], px*3, py*1.9, 90, 90);
    }    
    tint(255, 255);
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////house[0] -> house[1]
  void move01() {      
    if (px>house[1].px) {      
      alpha = 255;
      px-=3;
    }
    if (px<=house[1].px+5) {
      alpha=0;
    }
  }
  /////////////////////////house[1]->house[2]
  void move12() {    
    if (px<house[2].px) {
      alpha=255;
      px+=3;
      py-=2;
    }
    if (py>house[2].py) {
      py-=2;
    }
    if (py<=house[2].py) {
      alpha=0;
    }
  }


  /////////////////////////house[0] -> house[2]
  void move02() {
    if (px>house[2].px) {      
      px-=3;
    }
    if (py>house[2].py) {
      py-=2;
    }
    if (py<=house[2].py) {
      alpha=0;
    }
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////house[1]->house[0]
  void move10() {
    if (px<house[0].px) {
      alpha=255;
      px+=3;
    }
    if (px>=house[0].px-5) {
      alpha=0;
    }
  }

  ///////////////////////////////house[2] -> house[0]
  void move20() {
    if (px<house[0].px) {
      alpha=255;
      px+=3;
    }
    if (py<house[0].py) {
      py+=2;
    }
    if (py>=house[0].py) {
      alpha=0;
    }
  }

  ///////////////////////house[2] -> house[1]
  void move21() {
    if (px>house[1].px) {
      alpha=255;
      px-=3;
    }
    if (py<house[1].py) {
      py+=2;
    }
    if (py>=house[1].py) {
      alpha=0;
    }
  }
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////death
  void death() {
    death=1;    
    if (alpha_death<=255) {
      alpha_death-=25;
    }
    py-=3;
  }


  void data() {
    fill(0, 0, 255, 255);
    translate(px*3, py*1.9);
    scale(-1, 1);

    text("(px,py)=("+px+","+py+")", 0, 0-100);
    text("alpha="+alpha, 0, 0-90);
    text("step="+pig_step, 0, -120);

    scale(-1, 1);
    translate(-px*3, -py*1.9);
  }
}