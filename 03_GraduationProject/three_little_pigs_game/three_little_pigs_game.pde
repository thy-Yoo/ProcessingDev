
import processing.video.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
//import ddf.minim.effects.*;
//import ddf.minim.signals.*;
//import ddf.minim.spi.*;
//import ddf.minim.ugens.*;


Minim minim;
AudioPlayer hit1, backGroundMusic;
AudioInput input;
FFT fft;

int chNum=0; //IMPORTANT!!
//map
PImage map;
//PImage [] house = new PImage [3];
int newing_frameCount=0;

public  static int canvasW = 1920;
public  static int canvasH = 1080;

PImage img;
void settings(){
  fullScreen();
}

void setup() 
{ 
  
 minim = new Minim(this);
 hit1 = minim.loadFile("hit5.mp3");

 backGroundMusic = minim.loadFile("background.mp3");
 backGroundMusic.loop();
 fft = new FFT(hit1.bufferSize(), hit1.sampleRate());
 
  
  kinect = new SimpleOpenNI(this); 
  //frameRate(50);
  imageMode(CENTER);
  textAlign(CENTER,CENTER);
  textSize(10);
  kinect.enableDepth();  
  start = loadImage("start.png");
  
  
  //LeftWolf_C's images...
  img_leftwolf[0] = loadImage("wolf_left01.png");
  img_leftwolf[1] = loadImage("wolf_left02.png");
  img_leftwolf[2] = loadImage("wolf_left03.png");
  img_leftwolf[3] = loadImage("wolf_left_fire01.png");
  img_leftwolf[4] = loadImage("wolf_left_fire02.png");  
  img_leftwolf[5] = loadImage("left_wolf_dead.png");
  //RightWolf_C's images...  
  img_rightwolf[0] = loadImage("wolf_right01.png");
  img_rightwolf[1] = loadImage("wolf_right02.png");
  img_rightwolf[2] = loadImage("wolf_right03.png");
  img_rightwolf[3] = loadImage("wolf_right_fire01.png");
  img_rightwolf[4] = loadImage("wolf_right_fire02.png");
  img_rightwolf[5] = loadImage("right_wolf_dead.png");
  
  mov = new Movie (this,"intro.mp4");
  
 

  
  map =  loadImage("map2.png");
  img_win = loadImage("win.png");
  img_gameOver = loadImage("fail.png");
  
  
  img_pig[0] = loadImage("pig1.png");
  img_pig_death[0] = loadImage("pig1_dead.png");
  
  img_pig[1] = loadImage("pig2.png");
  img_pig_death[1] = loadImage("pig2_dead.png");
  
  img_pig[2] = loadImage("pig3.png");
  img_pig_death[2] = loadImage("pig3_dead.png");
  
  
  //fire = loadImage("fire.png");
  loadImage("house1.png");
  
  
  rectMode(CENTER);
  //Object generation
  imageMode(CENTER);
  cloud[0] = new Cloud(loadImage("cloud.png"),280,-80);
  cloud[1] = new Cloud(loadImage("cloud.png"),200,-100);
  cloud[2] = new Cloud(loadImage("cloud.png"),50,-70);
  
  
  house[0] = new House(loadImage("house1.png"),alive,70,40,255,non,nonAttacked); // img, exist, px, py, alpha, attackingWolfNum, attackStatus
  house[1] = new House(loadImage("house2.png"),alive,-75,40,255,non,nonAttacked); // img, exist, px, py, alpha, attackingWolfNum, attackStatus
  house[2] = new House(loadImage("house3.png"),alive,0,-45,255,non,nonAttacked); // img,exist, px, py, alpha, attackingWolfNum, attackStatus
  fire[0] = new Fire(loadImage("fire.png"),70,40,255);
  fire[1] = new Fire(loadImage("fire.png"),-70,40,255);
  fire[2] = new Fire(loadImage("fire.png"),0,-65,255);
  
 
    leftwolf[0] = new LeftWolf(0,0,alive,180,65,255,0,nonAttacked,leftA,85,far); //arr, num, exist, px, py, alpha, bri, attack(Status), step, imgsize, houseArrived
  leftwolf[1] = new LeftWolf(0,1,alive,220,65,255,0,nonAttacked,leftA,85,far);
  leftwolf[2] = new LeftWolf(0,2,alive,300,65,255,0,nonAttacked,leftA,85,far);
  leftwolf[3] = new LeftWolf(0,3,alive,350,65,255,0,nonAttacked,leftA,85,far); //arr, num, exist, px, py, alpha, bri, attack(Status), step, imgsize, houseArrived
  leftwolf[4] = new LeftWolf(0,4,alive,400,65,255,0,nonAttacked,leftA,85,far);
  leftwolf[5] = new LeftWolf(0,5,alive,500,65,255,0,nonAttacked,leftA,85,far);
  
  leftupwolf[0] = new LeftUpWolf(0,0,alive,210,-30,255,0,nonAttacked,leftA_up,85,far); //arr, num, exist, px, py, alpha, bri, attack(Status), step, imgsize, houseArrived
  leftupwolf[1] = new LeftUpWolf(0,1,alive,280,-30,255,0,nonAttacked,leftA_up,85,far);
  leftupwolf[2] = new LeftUpWolf(0,2,alive,380,-30,255,0,nonAttacked,leftA_up,85,far);
  leftupwolf[3] = new LeftUpWolf(0,3,alive,410,-30,255,0,nonAttacked,leftA_up,85,far); //arr, num, exist, px, py, alpha, bri, attack(Status), step, imgsize, houseArrived
  leftupwolf[4] = new LeftUpWolf(0,4,alive,460,-30,255,0,nonAttacked,leftA_up,85,far);
  leftupwolf[5] = new LeftUpWolf(0,5,alive,520,-30,255,0,nonAttacked,leftA_up,85,far);
  
  
  rightwolf[0] = new RightWolf(0,0,alive,-180,65,255,0,nonAttacked,rightA,85,far); //arr, num, exist, px, py, alpha, bri, attack(Status), step, imgsize, houseArrived
  rightwolf[1] = new RightWolf(0,1,alive,-295,65,255,0,nonAttacked,rightA,85,far);
  rightwolf[2] = new RightWolf(0,2,alive,-350,65,255,0,nonAttacked,rightA,85,far);
  rightwolf[3] = new RightWolf(0,3,alive,-430,65,255,0,nonAttacked,rightA,85,far); //arr, num, exist, px, py, alpha, bri, attack(Status), step, imgsize, houseArrived
  rightwolf[4] = new RightWolf(0,4,alive,-510,65,255,0,nonAttacked,rightA,85,far);
  rightwolf[5] = new RightWolf(0,5,alive,-530,65,255,0,nonAttacked,rightA,85,far);
  
  rightupwolf[0] = new RightUpWolf(0,0,alive,-200,-30,255,0,nonAttacked,rightA_up,85,far); //arr, num, exist, px, py, alpha, bri, attack(Status), step, imgsize, houseArrived
  rightupwolf[1] = new RightUpWolf(0,1,alive,-270,-30,255,0,nonAttacked,rightA_up,85,far);
  rightupwolf[2] = new RightUpWolf(0,2,alive,-320,-30,255,0,nonAttacked,rightA_up,85,far);
  rightupwolf[3] = new RightUpWolf(0,3,alive,-390,-30,255,0,nonAttacked,rightA_up,85,far); //arr, num, exist, px, py, alpha, bri, attack(Status), step, imgsize, houseArrived
  rightupwolf[4] = new RightUpWolf(0,4,alive,-480,-30,255,0,nonAttacked,rightA_up,85,far);
  rightupwolf[5] = new RightUpWolf(0,5,alive,-530,-30,255,0,nonAttacked,rightA_up,85,far);
  
  pig[0] = new Pig(house[0].px, house[0].py, 255, 0, 255); // px, py, alpha, death, death_alpha
  pig[1] = new Pig(house[1].px, house[1].py, 255, 0, 255); // px, py, alpha, death, death_alpha
  pig[2] = new Pig(house[2].px, house[2].py, 255, 0, 255); // px, py, alpha, death, death_alpha
  
} 

void draw() 
{ 
   
   /*ch00 is start*/
   if(chNum==0){
     ch00(); 
     if(printText==true){
       fill(255,0,0);
       textSize(100);
       text("ch0's Bri="+ ch00bri,width/2, height/2-130);
     }
   }
   
   /*ch01 is introMV*/   
   if(chNum==1){ 
     ch01();     
     if(printText==true){
       fill(255,0,0);
       textSize(100);
       text("ch1's Bri="+ch01bri,width/2, height/2-130);
       text(ch01_frameCount,width/2,height/2);
     }
   }
           
   /*ch02 is game*/   
    if(chNum==2){    
      
      pushMatrix();
      translate(canvasW/2,canvasH/2);
      //scale(-1.9, 1.9);       
      //scale(1.2,1.2);
     // scale(-1,1);
      chapter02();
      kinecting_wolf();
      kinecting_wolf_leftup();
      kinecting_wolf_right();
      kinecting_wolf_rightup();
      popMatrix();   
    }
    if(chNum==999){
      newing();      
      chNum=2;
      if(printText==true){ 
        text("newCoount="+newing_frameCount, width/2, height/2);
      }
    }
    /*chWin is win*/
    if(chNum==777){
      chWin();
    }
    if(chNum==444){
      chGameOver();
      if(printText==true){
        text("gameOver_frameCount="+gameOver_frameCount, width/2, height/2);
      }
    }
    
    
    
    
   if(printText==true){
     fill(0);
     textSize(150);
     text("chNum="+chNum, width/2, height/2+20);
     fill(255,0,0);
   }
   
   textSize(10);
   
  
}
