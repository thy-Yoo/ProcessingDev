PImage img, bg, bgbase, robot, decoh, decoh0, decot, decot0, light, light0;
//int currentFrame = 0;
PImage [] imgs = new PImage[3];
PImage [] tons = new PImage[5];
PImage [] axial = new PImage[3];
float x=0;
import ddf.minim.*;
Minim minim;
AudioPlayer player;
int index=0;
void settings(){
  size(900,600);
}

void setup() {
  
  bg = loadImage("back.png");
  bgbase = loadImage("bgbase2.png");
  robot = loadImage("robot2.png");
  decoh = loadImage("decoh.png");
  decoh0 = loadImage("decoh0.png");
  decot = loadImage("decot.png");
  decot0 = loadImage("decot0.png");
  light = loadImage("light.png");
  light0 = loadImage("light0.png");
  img = loadImage("sketch01.png");
  imgs[0] = loadImage("fill02.png");
  imgs[1] = loadImage("fill03.png");
  imgs[2] = loadImage("fill03.png");
  tons[0] = loadImage("ton1.png");
  tons[1] = loadImage("ton2.png");
  tons[2] = loadImage("ton3.png");
  tons[3] = loadImage("ton4.png");
  tons[4] = loadImage("ton5.png");
  axial[0] = loadImage("axial.png");
  axial[1] = loadImage("axial1.png");
  axial[2] = loadImage("axial3.png");
  background(255);
  image(bg,0,0);
  minim = new Minim(this);
  player = minim.loadFile("or6.mp3");
  
  fill(0);
}

void draw() {
 translate(-50,-38);
 if(frameCount>6 && frameCount<890){
   
   if(x <= -200){
     stroke(0);
       tint(255,20);
       image(bg,0,0);
   }
   else{ 
      stroke(0,5); 
      tint(255,255);
      image(imgs[frameCount%3], 0, 0);
      
      
      fill(0,250);
      rect(370,493+x*0.18,90,93);//heart
      image(robot,0,0);
 
      
    
  }   
 }
     image(axial[frameCount%3], -5,-7);
       tint(255,10);
      //image(bgbase,0,0);
      
      blend(tons[0],0, 0, 900, 600, 550-index, 390, 650, 439, LIGHTEST); 
      blend(tons[1],0, 0, 900, 600, -300+ index, -20, 650, 439, LIGHTEST);
      blend(tons[2],0, 0, 900, 600, -300+ index, 0, 650, 439, LIGHTEST);
      blend(tons[3],0, 0, 900, 600, -300+ index, 340, 650, 439, LIGHTEST);
      
     if(mousePressed && (mouseButton == LEFT)){
        x-=5;
        tint(#FFFFAD,50);
        image(light,449,380); //decoh position:535,318
        if(frameCount%2 == 0){
          image(light,449,380);
          
        }
         //player.rewind();       
      }
     if(mousePressed && (mouseButton == RIGHT)){
        x+=5;
        tint(255,255);
        image(decot0,235,318);
        if(frameCount%2 == 0){
          image(decot,235,318);
        }
     }
     
   
    
      if(x>200){x=200;}
      else if(x<-200){x=-200;}
      
      if(frameCount>899){
        frameCount=0;
      }
  if(frameCount%3 != 0){
    blend(tons[2],0, 0, 900, 600, (int)random(0,10), 0, 900, 600, LIGHTEST);
    blend(tons[1],0, 0, 900, 600, 290, -150, 650, 439, LIGHTEST);
  }
 fill(0);
    stroke(0);
    rect(50+frameCount, x+320, 5,3);

 translate(+50,+38);
 index++;
}
void mousePressed(){
       player.play(0);
       blend(tons[4],0, 0, 900, 600, (int)random(0,10), (int)random(0,50), 900, 600, MULTIPLY);
}
