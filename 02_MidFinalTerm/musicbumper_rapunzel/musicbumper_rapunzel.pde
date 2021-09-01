import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;
AudioOutput out;
FFT fft;
BeatDetect beat;

float kickSize, snareSize, hatSize;

float eRadius;
int width1 = 300;
int height1 = 300;
float vol = 0.45;  
void settings(){
  size(1200, 600);
}
void setup() {
  
  imageMode(CENTER);
  minim = new Minim(this);
  player = minim.loadFile("rapun.mp3");
  player.play();
  out = minim.getLineOut( Minim.MONO, 1024 );//playNote : piano
  //*************************************************************************************
  fft = new FFT(player.bufferSize(), player.sampleRate());//*
  beat = new BeatDetect();//song SOUND_ENERGY mode with a sensitivity of 10 milliseconds
  callimage();
  
  ellipseMode(RADIUS);
  eRadius = 5;//what?? is initialize.
}

void draw() {
  background(#282539);
 
  //image(imglayout, 600, 300);
  fill(0);
  rect( 600,160, 170,210);
  
   //************************************************************************yjyBump***
  
  stroke(255);
  strokeWeight(2);
  pushMatrix();
  translate(640, 115);
  yjyBump();
  translate(-110, -20);
  yjyBump();
  translate(15, 150);
  yjyBump();
  translate(130, -30);
  yjyBump();
  popMatrix();
  
  image(woodwall, 600, 700);
  
  image(woodwall, 600, 90);
  image(bottom, 600, 600);
  callimages();
  rectMode(CENTER);
  //
  
  fft.forward(player.mix);
  //beatDetect();
  
  //in the fire place.
  translate(1050,300);
  fill(0,255);
  quad(-100,-50,100,-50,100,150,-100,100);
  translate(-1050,-300);
 
  image(candle, 160,110);
  drawsound();
    
  image(fireplace,1065,340);
  
  image(candle2, 960,405); 
  image(curtainL, 250, 280);
  image(curtainR, 950, 280);
  //image(curtainR, 600, 400);
  

  /*
  //************************************************************************yjyBump2***
  pushMatrix();
  stroke(255);
  strokeWeight(2);
  translate(620, 200);
  yjyBump2();
  popMatrix();
  */
  /* 
  //************************************************************************red***
  pushMatrix(); //red
  stroke(200, 0, 0);
  strokeWeight(1.5);
  translate(0, 150);
  red();
  popMatrix();
  */
  //*************************************************************************** 
  /*
  pushMatrix();
  stroke(255);
  strokeWeight(2);
  translate(400, 200); //mouse position is 400,200.
  piano();  
  popMatrix();
  */
  //////////////
  //textTest.************************************************************************
  pushMatrix();
   translate(220,-50);
    //fill(0);
    //textSize(24);
    //text("BufferSize : "+player.bufferSize(), 550,100);
  int step_test = player.bufferSize() / 100;
  for(int i=0; i < player.bufferSize() - step_test; i+=step_test) {
    //candle5************************************************************************************************************
      fill(#FF0080,1);
      noStroke();
      translate(-220,50);
      ellipse(950,362.5, 3+player.mix.get(i)*12,6+player.mix.get(i)*20);//1.
      translate(220,-50);
      //*******************************************************************************************************************
   
    /* minim info******************************************************************************8  
    fill(#282539);
    fill(255);
    stroke(#FF0000);
    rect(750,130,400,65);
    fill(0);
    text("mix.get(i)*100 : "+player.mix.get(i)*100, 550,110);
    text("beat.detect() : "+ map(eRadius, 20, 80, 60, 255), 550,120);
    text("beat.detectSize() : "+ beat.detectSize(),550,130);
    //text("tempo : "+ out.getTempo(),550,198);
    //getTempo is out.getTempo or in.getTempo, No player.getTempo);
    */
  }
  popMatrix();
  
  //checkPosition();
  //3*****************************************************************************
}
void stop() {
  player.close();
  minim.stop();
  super.stop();
}
