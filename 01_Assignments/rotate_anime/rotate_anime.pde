YU yu = new YU();
BG bg = new BG();
KEGORI kegori = new KEGORI();

  float index=0;
  int indexA=0;
  int controlX=0, controlY=0, yy=0;
  float howrotate = 0.0, howrotateK = 0.0;
  float where = 0.0, whereK = 0.0;
  float alpha=0.0;
  float size0=0.0;
  float mouthsize=0.0, mouthsizeX=0.0, mouthsizeK = 0.0;

void settings(){
  size(700,700);
}


void setup(){
  
  frameRate(60);
  //PFont font = loadFont("HYbsrB-48.vlw");
 // textFont(font);
}

void draw(){
  
  index++;
 
  background(#ebebe3);
  bg.locker();
  fill(0,25);
  rect(0,0,700,700);
      
      pushMatrix();
      translate(620,200);
      scale(0.5,0.5);
      rotate(index*PI/50);
      bg.flower(0);
      popMatrix();
      pushMatrix();
      translate(120,550);
      scale(0.6,0.6);
      rotate(index*PI/50);
      bg.flower(0);
      popMatrix();
      pushMatrix();
      translate(60,110);
      scale(0.4,0.4);
      rotate(index*PI/50);
      bg.flower(0);
      popMatrix();
      pushMatrix();
      translate(580,500);
      scale(0.4,0.4);
      rotate(index*PI/50);
      bg.flower(0);
      popMatrix();
   
  
  
  yu.top();
  bg.desk();
  yu.arm();
  yu.hair_back();
  yu.face(controlX*0.15,controlY*1.2);
  yu.hair_front(yy*0.23);
  yu.eyebrow(yy*0.15);
  
  
  
  
  
  translate(yu.c-80,300);
  rotate(-howrotate*PI/9);
  yu.eye(0+yy*0.1,-5-yy*0.15,where);
  rotate(howrotate*+PI/9);
  translate(-(yu.c-80),-300);
  translate(yu.c+80,300);
  rotate(-howrotate*PI/8);
  yu.eye(0-yy*0.1,-5-yy*0.15,where);
  rotate(howrotate*+PI/8);
  translate(-(yu.c+80),-300);
  
  yu.cheek(size0,alpha);
  yu.mouth(mouthsize+yy*0.4,mouthsizeX*0.8);
  
  yu.hand();
  
  
  //textSize(50);
  //text(indexA+","+controlY, 500, 650);
  
  
  ///////////////////KEGORI
  pushMatrix();
  translate(20,375);
    scale(0.3);
    kegori.body(150,180);
    kegori.eye(150,180);
    kegori.eye(350,180);
    
    
    translate(150,180);
    rotate((int)360*howrotateK/1500);
    kegori.blackeye(-10,0);
    rotate((int)-360*howrotateK/1500);
    translate(-150,-180);
    translate(350,180);
    rotate((int)360*howrotateK/1500);
    kegori.blackeye(-10,0);
    rotate((int)-360*howrotateK/1500);
    translate(-350,-180);
    
     kegori.mouse2(250,340,mouthsizeK*1.5);
     kegori.nose(250,230,whereK*1.8);
     kegori.cheek(250,250,alpha);
  popMatrix();
  ////////////////////////
  
  if(indexA<2){
    if(index%200>0 && index%200<=50){
    }
    else if(index%200>50 && index%200<=100){
      controlY+=1;
      howrotate+=PI/80;
      where+=0.15;
      size0+=0.8;
      alpha+=2;
      mouthsize+=0.1;
    }
    else if(index%200>100 && index%200<=150){
    }
    else{
      controlY-=1;
      howrotate-=PI/80;
      where-=0.15;
      size0-=0.8;
      alpha-=2;
      mouthsize-=0.1;
    }
  }
  else if(indexA==2){
    if(index%200>50 && index%200<=150){
    controlX++;
    yy++;
    size0+=0.5;
    } 
  }
  else if(indexA==3){
    if(index%200>50 && index%200<=150){
    mouthsizeX+=0.9;
    yy++;
    mouthsize+=0.2;
    alpha++;
    }
  }
  if(index%200==0){ indexA++; }
  if(index==1000){ index = 0;}
  
  if(index%100>=0 && index%100<50){
      whereK+=0.15;
      mouthsizeK+=1.2;
  }
  else{
      whereK-=0.15;
      mouthsizeK-=1.2;
  }
 
  howrotateK+=1;
    
  
  
}

class YU {
  int c = 350; //o==center.
  void hair_back(){
    noStroke();
    fill(#3f260d);
    beginShape();
    vertex(c-200,290);
    vertex(c-180,350);
    vertex(c,400);
    vertex(c,120);
    vertex(c-150,120);
    endShape(CLOSE);
    fill(#3f260d);
    beginShape();
    vertex(c+200,290);
    vertex(c+180,350);
    vertex(c,400);
    vertex(c,120);
    endShape(CLOSE);
  }
  void face(float controlX, float controlY){
    stroke(0);
    fill(#f8e8da);
    ellipse(c+170,330,60,70); //ear.
    ellipse(c-170,330,60,70);
    beginShape();
    vertex(c-150-controlX,300); //face.
    bezierVertex(c-150-controlX,300, c-150-controlX,150, c,150);
    bezierVertex(c,150, c+150+controlX,150, c+150+controlX,300);
    bezierVertex(c+150+controlX,300, c+275+controlX,450+controlY, c,480);
    bezierVertex(c,480, c-275-controlX,450+controlY, c-150-controlX,300);
    endShape();
  }
  void hair_front(float yy){
    noStroke();
    fill(#3f260d);
    beginShape();
    vertex(c-200,290);
    bezierVertex(c-200,290-yy, c,180-yy, c+200,290);
    bezierVertex(c+200,290, c+260,10, c, 80);
    bezierVertex(c,80, c-260,10, c-200, 290);
    endShape();
    fill(#f8e8da);
    triangle(c-29,260-yy, c-6,260-yy, c-15,210-yy*0.6);
    triangle(c-5,260-yy, c+16,260+yy, c+4, 215-yy*0.6);
    fill(#aa835f);
    beginShape();
    vertex(c-140,100);
    bezierVertex(c-190,160-yy*0.5, c-120,180-yy*0.5, c-40,170-yy*0.5);
    bezierVertex(c-40,170-yy*0.5, c-130,160-yy*0.5, c-80,100);
    bezierVertex(c-80,100, c-100,80, c-120,100);
    bezierVertex(c-120,100, c-120,80, c-140,100);
    endShape(CLOSE);
    beginShape();
    vertex(c+140,100);
    bezierVertex(c+190-yy*0.5,160, c+120,180-yy*0.5, c+40,170-yy*0.5);
    bezierVertex(c+40,170-yy*0.5, c+130,160-yy*0.5, c+80,100);
    bezierVertex(c+80,100, c+100,80, c+120,100);
    bezierVertex(c+120,100, c+120,80, c+140,100);
    endShape(CLOSE);
  
    
    
  }
  void eyebrow(float yy){
    fill(#3f260d);
    stroke(0);
    ellipse(c-80,265-yy, 95,13);
    ellipse(c+80,265-yy, 95,13);
  }
  void eye(float x, float y, float where){
    fill(#3f260d);
    stroke(0);
    ellipse(x+where,20+y,22,22);
  }
  
  void cheek(float size0, float alpha){
    noStroke();
    fill(#FF7480, alpha);
    ellipse(c-130,360, 30+size0*2,20+size0*2);
    ellipse(c+130,360, 30+size0*2,20+size0*2);
  }
  void mouth(float mouthsize, float mouthsizeX){
    stroke(0);
    fill(255);
    ellipse(c,430, 25+mouthsizeX,2+mouthsize);
  }
  
  void hand(){
    
    fill(#f8e8da);
    beginShape();
    vertex(c-30,485);
    bezierVertex(c-30, 480, c-30,470, c-60,460);
    bezierVertex(c-60,430, c-110,430, c-105,460);
    bezierVertex(c-105,460, c-105,500, c-30,485);
    endShape(CLOSE);
    beginShape();
    vertex(c+30,485);
    bezierVertex(c+30, 480, c+30,470, c+60,460);
    bezierVertex(c+60,430, c+110,430, c+105,460);
    bezierVertex(c+105,460, c+105,500, c+30,485);
    endShape(CLOSE);
  }
  void arm(){
     stroke(0);
     fill(#384f72);
     beginShape();
     vertex(c-35,485);
     bezierVertex(c-30,485, c-60, 550, c-90,550);
     bezierVertex(c-105,550, c-140, 540, c-110,450);
     endShape(CLOSE);
     line(c-87,475, c-105,500);
     beginShape();
     vertex(c+35,485);
     bezierVertex(c+30,485, c+60, 550, c+90,550);
     bezierVertex(c+105,550, c+140, 540, c+110,450);
     endShape(CLOSE);
     line(c+87,475, c+105,500);
  }
  void top(){
    stroke(0);
    fill(#384f72);
    quad(c-110, 450, c-150,550, c+150,550, c+110,450);
    
    
    fill(#FAF372);
    line(c-40,470, c,520);
    line(c+40,470, c,520);
    rect(c-10,520, 20,50);
    
    fill(255);
    arc(c-30,470, 52,50, 0,PI);
    arc(c+30,470, 52,50, 0,PI);
  }
  
}
class BG{
  void desk(){
    int c=350;
    fill(#cbb390);
    quad(c-300,530, c+300,530, c+370,700, c-370,700);
    noStroke();
    fill(#dbcfbc);
    triangle(c-370,700, c-300,532, c-290,532);
    triangle(c+290,532, c+300,532, c+370,700);
    rectMode(CORNER);
    rect(c-300,532,600,10);
  }
  
  void locker(){
    fill(#9EC9A8);
    rect(0,500, 700,200);//bottom.
    fill(#bab4c9);
    rect(0,200,700,300);
    fill(#c5bfd4);
    quad(-50,200,750,200, 620,150, 80,150);
    
  }
  
  void flower(float c){
    pushMatrix();
    flowerBasic(c);
    rotate(PI/2.5);
    flowerBasic(c);
    rotate(PI/2.5);
    flowerBasic(c);
    rotate(PI/2.5);
    flowerBasic(c);
    rotate(PI/2.5);
    flowerBasic(c);
    popMatrix();
    
  }
}


    
void flowerBasic(float c){
    
    noStroke();
    fill(255);//#FFC9D7
    beginShape();
    vertex(c,c);
    bezierVertex(c,c, c-30, c-30, c, c-80);
    bezierVertex(c,c-80, c+30, c-80, c+30,c-30);
    bezierVertex(c+30,c-30,c+30,c-30, c,c);
    //bezier(c,c, c-30,c-30, c-30,c-80, c,c-80);
    //bezier(c,c, c+30,c-30, c+30,c-80, c,c-80);
    endShape(CLOSE);
   
    
  }
  
class KEGORI{
  
  void body(int x, int y){
    fill(#20A503);
    stroke(0);
    strokeWeight(3);
    arc(250,600,230,600,PI,TWO_PI,CLOSE);
    ellipse(250,290,330,260);
    ellipse(x,y,130,130);
    ellipse(x+200,y,130,130);
    noStroke();
    ellipse(250,290,320,250);
    strokeWeight(1);
  }
  
  void eye(int x, int y) {
  fill(255);
  ellipse(x,y,100,100);
  
  }
  
  void blackeye(int x, int y){
     fill(0);
     ellipse(x,y,45,45);
     fill(255);
     ellipse(x,y,7,7);
  }
  
  void mouse(int x, int y, float howlong){
    fill(#FAAEAE);
    ellipse(x,y+10,30,50+howlong);
  }
  
  void mouse2(int x, int y, float mousesize){
    fill(#FFAAAA);
    triangle(x-110,y-50,x+110,y-50,x,y-50+mousesize);
  }
  
  void nose(int x, int y, float sizee){
    fill(255);
    ellipse(x-25,y,sizee,sizee);
    ellipse(x+25,y,sizee,sizee);
  }
  void cheek(int x, int y, float alpha){
    fill(#FF245F,alpha);
    ellipse(x-100,y,100,100);
    ellipse(x+100,y,100,100);
  }
  
}
