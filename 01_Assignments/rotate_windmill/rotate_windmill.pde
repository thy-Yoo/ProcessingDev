import ddf.minim.*;

Minim minim;
AudioPlayer player;
void settings(){
  size(880, 660);
}
void setup() {
  //size(840,560);
  
  background(255);
  smooth();
  rectMode(CORNER);
  frameRate(60);
  minim = new Minim(this);
  player = minim.loadFile("bee.mp3");
}

void mousePressed() {
  if (pmouseX >200 && pmouseX<350 && pmouseY>350 && pmouseY<500) {
    player.play();
    player.rewind();
  }
}

float x=0, y=0;
float x1=0, y1=0;
float howRotate=0;
float whereX=0, whereY=0;
int index=0;

float angle = 5.0;  // Current angle
float speed = 0.2;  // Speed of motion
float radius = 60.0;// Range of motion
float sx = 2.0;
float sy = 2.0;

void draw() {
  if (mousePressed == true) {
    howRotate=(mouseX-440)*PI/3000;
  }
  background(0);

  background(#E4F1F7);//
  pushMatrix();
  translate(50+mouseX, 200+mouseY);
  cloud();
  popMatrix();
  grass_bg();

  pushMatrix();
  x=mouseX-450; 
  y=mouseY-450;
  if (y<-60) {
    y=-60;
  }
  if (x>150) {
    x=150;
    if (y>-50) {
      y=-50;
    }
  } else if (x<-250) {
    x=-250;
    if (y>-10) {
      y=-10;
    }
  }

  translate(-20, 430);
  grasses(x*0.5, y*0.5, #BDECB3);

  popMatrix();

  pushMatrix();
  translate(210, 45);
  pushMatrix();
  scale(0.4, 0.4);
  translate(-200, 700);
  fill(#FBF3F7);
  rect(-5, 0, 10, 400);
  translate(320, -200);
  fill(#FAF8E8);
  rect(-5, 0, 10, 400);
  translate(320, +100);
  fill(#E5F3F5);
  rect(-5, 0, 10, 400);
  translate(320, -150);
  fill(#E9F9F2);
  rect(-5, 0, 10, 400);
  translate(320, +100);
  fill(#FBF3F7);
  rect(-5, 0, 10, 400);
  translate(320, -110);
  fill(#FAF8E8);
  rect(-5, 0, 10, 400);
  popMatrix();

  //if(mouseX

  pushMatrix();
  scale(0.4, 0.4);
  pushMatrix();
  translate(-200, 700);
  rotate(frameCount*howRotate);
  winWing_set(#F2D6E4, #FBF3F7);
  popMatrix();
  pushMatrix();
  translate(120, 500);
  rotate(frameCount*howRotate);
  winWing_set(#FCF3A1, #FAF8E8);
  popMatrix();
  pushMatrix();
  translate(440, 600);
  rotate(frameCount*howRotate);
  winWing_set(#A1F1FC, #EFF7F8);
  popMatrix();
  pushMatrix();
  translate(760, 450);
  rotate(frameCount*howRotate);
  winWing_set(#BFFBDF, #E9F9F2);
  popMatrix();
  pushMatrix();
  translate(1080, 550);
  rotate(frameCount*howRotate);
  winWing_set(#F2D6E4, #FBF3F7);
  popMatrix();
  pushMatrix();
  translate(1400, 460);
  rotate(frameCount*howRotate);
  winWing_set(#FCF3A1, #FAF8E8);
  popMatrix();
  popMatrix();

  pushMatrix();
  translate(200, 70);
  scale(0.8, 0.8);
  windmill1(#E55643, #DE433E);
  popMatrix();
  pushMatrix();
  translate(430, 280);
  scale(0.45, 0.4);
  windmill1(#71AAF2, #5F97DE);
  popMatrix();

  pushMatrix();
  translate(386, 198);
  scale(0.8, 0.8);
  rotate(frameCount*howRotate);
  millWing(); 
  rotate(PI/2);
  millWing(); 
  rotate(PI/2);
  millWing(); 
  rotate(PI/2);
  millWing(); 
  rotate(PI/2);
  popMatrix();  



  popMatrix();

  pushMatrix();
  x1=mouseX-450; 
  y1=mouseY-450;
  if (x1>15) {
    x1=15;
  } else if (x1<-15) {
    x1=-15;
  }
  if (y1>=5) {
    y1=5;
  } else if (y1<-10) {
    y1=-10;
  }   
  translate(-110, 360);
  flower(x1, y1, #e6fe63, #f3be56, #f8f25b, #ffbd5c);
  translate(100, -30);
  flower(x1, y1, #fdcac1, #e4725e, #eb9f98, #ef5e45);
  translate(-50, 60);
  flower(x1, y1, #FECD63, #F37556, #F8AA5B, #FF725C);
  translate(-120, -40);
  flower(x1, y1, #FDC1D4, #E45E88, #EB98B8, #EF457B);
  translate(50, 60);
  flower(x1, y1, #d4f493, #ebdd8a, #e0ef8d, #f5de8f);
  translate(140, -40);
  flower(x1, y1, #f9e0d3, #e1aa8e, #eac4b6, #e8a17e);
  translate(60, 65);
  flower(x1, y1, #fab579, #f06e70, #f59772, #fb737f);
  translate(72, -40);
  flower(x1, y1, #fbc9e4, #e374af, #eba6cf, #ec5faa);
  popMatrix();

  pushMatrix();
  x=mouseX-420; 
  y=mouseY-450;
  if (x>20) {
    x=20;
  } else if (x<-100) {
    x=-100;
  }
  if (y>=10) {
    y=10;
  } else if (y<-30) {
    y=-30;
  }   
  translate(460, 590);
  for (int i=0; i<50; i++) {
    translate(7, -0.2);
    grass(x, y, #BDECB3);//
  }
  popMatrix();

  pushMatrix();
  scale(1, 1.2);
  translate(470, 450);
  grasses2(x, y, #9FDD9B);
  popMatrix();

  angle += speed;  // Update the angle
  float sinval = sin(angle);
  float cosval = cos(angle);
  float xb2 = ( 50 + (cosval * radius) + cos(angle * sx) * radius/2 )*1.5;
  float yb2 = 50 + (sinval * radius) + sin(angle * sy) * radius/2;

  pushMatrix();
  scale(0.7, 0.7);
  translate(400, 550);
  bee(xb2, yb2);
  popMatrix();
  //text("xb2"+xb2+",yb2" +yb2, 200, 200);

  fill(0);
  //text(mouseX + "," + mouseY, 200,50);
  textSize(20);
  text("If you press the mouse you can rotate the wings of a windmill .", 20, 45);
  text("Move your mouse ! Then , grass and flowers will move.", 20, 65);
  text("And, Please press the bee !", 20, 85);

  if (frameCount == 1000) {
    frameCount=0;
  }
}
void cloud() {
  noStroke();
  fill(255);
  beginShape();
  vertex(-107.0, -55.0);
  bezierVertex(-107.0, -55.0, -107.0, -55.0, -107.0, -55.0);
  bezierVertex(-107.0, -55.0, -115.0, -128.0, -41.0, -91.0);
  bezierVertex(-39.0, -90.0, -27.0, -122.0, -1.0, -107.0);
  bezierVertex(-2.0, -106.0, -2.0, -253.0, 100.0, -159.0);
  bezierVertex(104.0, -157.0, 108.0, -188.0, 132.0, -159.0);
  bezierVertex(133.0, -156.0, 186.0, -165.0, 162.0, -100.0);
  bezierVertex(162.0, -99.0, 218.0, -53.0, 155.0, -19.0);
  bezierVertex(109.0, 0.0, 56.0, 12.0, -1.0, -20.0);
  bezierVertex(-4.0, -21.0, -64.0, 27.0, -93.0, -35.0);
  bezierVertex(-96.0, -36.0, -121.0, -34.0, -106.0, -54.0);
  endShape();
  beginShape();

  translate(700, -200);
  beginShape();
  vertex(-236.0, -96.0);
  bezierVertex(-236.0, -96.0, -236.0, -96.0, -236.0, -96.0);
  bezierVertex(-236.0, -96.0, -239.0, -129.0, -204.0, -118.0);
  bezierVertex(-211.0, -129.0, -177.0, -173.0, -137.0, -137.0);
  bezierVertex(-135.0, -135.0, -104.0, -190.0, -57.0, -158.0);
  bezierVertex(-39.0, -167.0, 38.0, -150.0, 7.0, -78.0);
  bezierVertex(18.0, -71.0, 25.0, -1.0, -99.0, -30.0);
  bezierVertex(-120.0, -23.0, -194.0, -5.0, -219.0, -37.0);
  bezierVertex(-242.0, -25.0, -286.0, -78.0, -237.0, -97.0);
  endShape();
}

void bee(float xb, float yb) {
  translate(xb, yb);

  stroke(#FFF678);
  beginShape();
  fill(#9BC1F8);
  vertex(0.0, 0.0);
  bezierVertex(0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  bezierVertex(0.0, 0.0, -32.0, -75.0, 21.0, -67.0);
  bezierVertex(46.0, -56.0, 0.0, 1.0, 0.0, 1.0);
  endShape();

  beginShape();
  fill(#BEFEF9);
  vertex(0.0, 0.0);
  bezierVertex(0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  bezierVertex(0.0, 0.0, 50.0, -43.0, 76.0, -7.0);
  bezierVertex(69.0, 9.0, 45.0, 27.0, 1.0, 1.0);
  endShape();

  beginShape();
  fill(#FFF451);
  vertex(18.0, 42.0);
  bezierVertex(17.0, 46.0, -14.0, 61.0, 18.0, 42.0);
  bezierVertex(25.0, 39.0, -14.0, -50.0, -51.0, -19.0);
  bezierVertex(-96.0, 25.0, -33.0, 53.0, 17.0, 41.0);
  endShape();

  beginShape();
  fill(255);
  vertex(-93.0, -24.0);
  bezierVertex(-99.0, -25.0, -93.0, -24.0, -93.0, -24.0);
  bezierVertex(-93.0, -24.0, -106.0, 14.0, -56.0, 14.0);
  bezierVertex(-12.0, 24.0, -15.0, -41.0, -44.0, -50.0);
  bezierVertex(-73.0, -57.0, -92.0, -51.0, -93.0, -24.0);
  endShape();

  noFill(); 
  stroke(0);
  bezier(-76.0, -52.0, -76.0, -52.0, -68.0, -142.0, -102.0, -107.0);
  bezier(-102.0, -107.0, -136.0, -72.0, -81.0, -76.0, -91.0, -94.0);
  bezier(-52.0, -52.0, -52.0, -52.0, -34.0, -130.0, -17.0, -102.0);
  bezier(-17.0, -102.0, 0.0, -74.0, -37.0, -69.0, -31.0, -83.0);

  beginShape();
  fill(0);
  vertex(-23.0, -23.0);
  bezierVertex(-23.0, -23.0, -23.0, -23.0, -23.0, -23.0);
  bezierVertex(-23.0, -23.0, -14.0, 20.0, -46.0, 35.0);
  bezierVertex(-48.0, 37.0, -25.0, 43.0, -25.0, 43.0);
  bezierVertex(-25.0, 43.0, 18.0, 5.0, -20.0, -22.0);
  endShape();

  beginShape();
  fill(0);
  vertex(7.0, 9.0);
  bezierVertex(7.0, 9.0, 7.0, 9.0, 7.0, 9.0);
  bezierVertex(7.0, 9.0, 3.0, 44.0, -12.0, 43.0);
  bezierVertex(-15.0, 44.0, 10.0, 47.0, 12.0, 43.0);
  bezierVertex(12.0, 43.0, 20.0, 40.0, 18.0, 30.0);
  bezierVertex(19.0, 19.0, 6.0, 9.0, 6.0, 9.0);
  endShape();

  stroke(#FFF678);
  ellipse(-85, -25, 7, 7);
  ellipse(-40, -10, 7, 7);
}

void winWing_set(color col1, color col2) {
  winWing(col1, col2); 
  rotate(PI/2);
  winWing(col1, col2); 
  rotate(PI/2);
  winWing(col1, col2); 
  rotate(PI/2);
  winWing(col1, col2); 
  rotate(PI/2);
}

void winWing(color col1, color col2) {
  beginShape();
  fill(col1);
  vertex(0.0, 1.0);
  bezierVertex(0.0, 1.0, 0.0, 1.0, 0.0, 1.0);
  bezierVertex(0.0, 1.0, -99.0, -89.0, -99.0, -89.0);
  bezierVertex(-99.0, -89.0, -15.0, -98.0, 4.0, -79.0);
  bezierVertex(23.0, -60.0, 42.0, -37.0, 42.0, -37.0);
  bezierVertex(42.0, -37.0, 1.0, 2.0, 1.0, 2.0);
  endShape();

  beginShape();
  fill(col2);
  vertex(0.0, 2.0);
  bezierVertex(0.0, 2.0, 0.0, 2.0, 0.0, 2.0);
  bezierVertex(0.0, 2.0, 24.0, -81.0, -17.0, -87.0);
  bezierVertex(-18.0, -87.0, 18.0, -95.0, 42.0, -37.0);
  bezierVertex(41.0, -36.0, 32.0, -14.0, -1.0, 2.0);
  endShape();
}

void grasses2(float x, float y, color col) {
  translate(20, 2); 
  grass(x, y, col);
  translate(28, 8); 
  grass(x, y, col);
}
void grasses(float x, float y, color col) {
  pushMatrix();
  //for(int j=0; j<13; j++){
  for (int i=0; i<160; i++) {
    translate(6, -0.4);
    grass(x, y, col);//#9FDD9B
  }//translate(-160*6-5,160*0.4);
  //}
  popMatrix();
}

void flower(float x, float y, color col1, color col2, color col3, color col4) {

  translate(5, 0);  
  beginShape();
  noStroke();
  fill(#B8DE8D);//green.
  vertex(230.0+x, 195.0+y);
  bezierVertex(230.0+x, 195.0+y, 230.0+x, 195.0+y, 230.0+x, 195.0+y);
  bezierVertex(230.0+x, 195.0+y, 205.0, 256.0, 209.0, 311.0);
  bezierVertex(209.0, 312.0, 215.0, 312.0, 215.0, 312.0);
  bezierVertex(215.0, 312.0, 210.0, 274.0, 235.0+x, 192.0+y);
  bezierVertex(245.0+x, 189.0+y, 230.0+x, 196.0+y, 230.0+x, 196.0+y);
  endShape();

  beginShape();
  vertex(216.0, 312.0);
  bezierVertex(216.0, 312.0, 216.0, 312.0, 216.0, 312.0);
  bezierVertex(216.0, 312.0, 212.0, 222.0, 190.0+x, 220.0+y);
  bezierVertex(187.0+x, 204.0+y, 217.0, 272.0, 206.0, 311.0);
  bezierVertex(206.0, 313.0, 217.0, 311.0, 217.0, 311.0);
  endShape();

  beginShape();
  vertex(210.0, 310.0);
  bezierVertex(210.0, 310.0, 210.0, 310.0, 210.0, 310.0);
  bezierVertex(210.0, 310.0, 194.0, 267.0, 283.0+x, 197.0+y);
  bezierVertex(285.0+x, 196.0+y, 208.0, 284.0, 217.0, 310.0);
  endShape();

  beginShape();
  fill(col1);//red,
  vertex(237.0+x, 148.0+y);
  bezierVertex(237.0+x, 148.0+y, 237.0+x, 148.0+y, 237.0+x, 148.0+y);
  bezierVertex(237.0+x, 148.0+y, 207.0+x*0.5, 161.0+y*0.5, 219.0+x*0.5, 180.0+y*0.5);
  bezierVertex(231.0+x*0.5, 199.0+y*0.5, 261.0+x*0.5, 190.0+y*0.5, 238.0+x, 148.0+y);
  endShape();

  translate(-5, 0);

  beginShape();
  fill(col2);
  vertex(253.0+x, 142.0+y);
  bezierVertex(253.0+x, 142.0+y, 253.0+x, 142.0+y, 253.0+x, 142.0+y);
  bezierVertex(253.0+x, 142.0+y, 236.0+x*0.5, 159.0+y*0.5, 218.0+x*0.5, 172.0+y*0.5);
  bezierVertex(203.0+x*0.5, 191.0+y*0.5, 237.0+x*0.5, 214.0+y*0.5, 253.0+x*0.5, 200.0+y*0.5);
  bezierVertex(269.0+x*0.5, 186.0+y*0.5, 253.0+x, 144.0+y, 253.0+x, 144.0+y);
  endShape();

  beginShape();
  fill(col3);
  vertex(225.0+x*0.5, 200.0+y*0.5);
  bezierVertex(225.0+x*0.5, 200.0+y*0.5, 225.0+x*0.5, 200.0+y*0.5, 225.0+x*0.5, 200.0+y*0.5);
  bezierVertex(225.0+x*0.5, 200.0+y*0.5, 187.0+x*0.5, 187.0+y*0.5, 233.0+x, 140.0+y);
  bezierVertex(236.0+x, 133.0+y, 215.0+x*0.5, 168.0+y*0.5, 225.0+x*0.5, 198.0+y*0.5);
  endShape();

  beginShape();
  fill(col4);
  vertex(253.0+x*0.5, 204.0+y*0.5);
  bezierVertex(253.0+x*0.5, 204.0+y*0.5, 278.0+x*0.5, 192.0+y*0.5, 253.0+x*0.5, 204.0+y*0.5);
  bezierVertex(228.0+x*0.5, 216.0+y*0.5, 199.0+x*0.5, 181.0+y*0.5, 266.0+x, 145.0+y);
  bezierVertex(270.0+x, 151.0+y, 280.0+x*0.5, 204.0+y*0.5, 254.0+x*0.5, 205.0+y*0.5);
  endShape();
}

void grass(float x, float y, color col) {
  pushMatrix();
  scale(0.5, 0.5);
  beginShape();
  fill(col);
  vertex(-6.0, 24.0);
  bezierVertex(-6.0, 24.0, -6.0, 24.0, -6.0, 24.0);
  bezierVertex(-6.0, 24.0, 5.0, 22.0, 4.0, 23.0);
  bezierVertex(3.0, 24.0, 13.0, -38.0+y, 50.0+x, -48.0+y);
  bezierVertex(60.0+x, -51.0+y, -10.0, -55.0, -3.0, 29.0);
  endShape();
  popMatrix();
}
void grass_bg() {
  noStroke();
  fill(#E5F4C7);//#BAF2B6
  rect(0, 460, 900, 340);
  arc(550, 460, 1200, 180, PI, TWO_PI);
  fill(#BDECB3);
  quad(0, 428, 880, 370, 880, 800, 0, 800);
}


void windmill1(color col, color col_stroke) {
  pushMatrix();
  translate(-2, 220);
  beginShape();
  fill(#F2EBD9);
  vertex(135.0, 165.0);
  beginShape();
  stroke(#F1E1CA);
  vertex(140.0, 160.0);
  bezierVertex(140.0, 160.0, 140.0, 161.0, 140.0, 160.0);
  bezierVertex(140.0, 159.0, 314.0, 159.0, 318.0, 160.0);
  bezierVertex(322.0, 161.0, 342.0, 227.0, 339.0, 277.0);
  bezierVertex(336.0, 327.0, 329.0, 338.0, 326.0, 348.0);
  bezierVertex(323.0, 358.0, 157.0, 357.0, 141.0, 345.0);
  bezierVertex(132.0, 330.0, 119.0, 266.0, 141.0, 163.0);
  endShape(CLOSE);
  popMatrix();
  pushMatrix();
  for (int k=0; k<14; k++) {
    int j=13;
    for (int i=0; i<90; i+=8) { 
      line(220+i, 400, 220+i+10, 390);
    }
    translate(0, j);
  }
  popMatrix();
  stroke(col_stroke);
  pushMatrix();
  translate(65, 80);
  scale(0.88, 1);
  beginShape();
  fill(col);
  vertex(153.0, 86.0);
  bezierVertex(153.0, 86.0, 153.0, 85.0, 153.0, 86.0);
  bezierVertex(153.0, 87.0, 128.0, 107.0, 128.0, 107.0);
  bezierVertex(128.0, 107.0, 109.0, 261.0, 68.0, 288.0);
  bezierVertex(27.0, 315.0, 49.0, 310.0, 48.0, 310.0);
  bezierVertex(47.0, 310.0, 103.0, 321.0, 102.0, 321.0);
  bezierVertex(101.0, 321.0, 279.0, 323.0, 279.0, 324.0);
  bezierVertex(279.0, 325.0, 332.0, 309.0, 331.0, 309.0);
  bezierVertex(330.0, 309.0, 333.0, 308.0, 334.0, 307.0);
  bezierVertex(335.0, 306.0, 310.0, 286.0, 308.0, 286.0);
  bezierVertex(306.0, 286.0, 258.0, 191.0, 256.0, 106.0);
  bezierVertex(255.0, 105.0, 230.0, 87.0, 229.0, 86.0);
  bezierVertex(228.0, 85.0, 152.0, 86.0, 153.0, 86.0);
  endShape(CLOSE);
  popMatrix();

  pushMatrix();
  fill(col);
  beginShape();
  vertex(172.0, 188.0);
  bezierVertex(172.0, 188.0, 172.0, 188.0, 172.0, 188.0);
  bezierVertex(172.0, 188.0, 183.0, 188.0, 183.0, 188.0);
  bezierVertex(183.0, 188.0, 293.0, 187.0, 294.0, 187.0);
  bezierVertex(295.0, 187.0, 337.0, 146.0, 234.0, 115.0);
  bezierVertex(153.0, 138.0, 156.0, 167.0, 169.0, 185.0);
  endShape(CLOSE);
  popMatrix();
  pushMatrix();
  for (int k=0; k<16; k++) {
    stroke(col_stroke);
    int j=12;
    for (int i=0; i<50; i+=8) {
      line(230+i, 200, 230+i+10, 190);
    }
    translate(j*0.185, j);
  }
  popMatrix();
  pushMatrix();
  translate(65, 265);
  fill(#A1B9B6);
  beginShape();
  stroke(#F1E1CA);
  vertex(179.0, 168.0);
  bezierVertex(179.0, 168.0, 179.0, 168.0, 179.0, 168.0);
  bezierVertex(179.0, 168.0, 233.0, 165.0, 233.0, 165.0);
  bezierVertex(233.0, 165.0, 234.0, 212.0, 234.0, 214.0);
  bezierVertex(234.0, 216.0, 188.0, 217.0, 185.0, 216.0);
  bezierVertex(182.0, 215.0, 180.0, 179.0, 179.0, 179.0);
  bezierVertex(178.0, 179.0, 180.0, 167.0, 179.0, 167.0);
  endShape();
  popMatrix();
}

void millWing() {
  pushMatrix();

  stroke(#DE433E);
  beginShape();
  fill(#8A5346);
  vertex(-144.0, -184.0);
  bezierVertex(-144.0, -184.0, -144.0, -184.0, -144.0, -184.0);
  bezierVertex(-144.0, -184.0, 5.0, -1.0, 5.0, -1.0);
  bezierVertex(5.0, -1.0, 0.0, 6.0, 0.0, 6.0);
  bezierVertex(0.0, 6.0, -149.0, -183.0, -149.0, -182.0);
  bezierVertex(-149.0, -181.0, -145.0, -188.0, -145.0, -186.0);
  endShape();

  beginShape();
  stroke(#F1E1CA);
  fill(#F9F5EF);
  vertex(-155.0, -195.0);
  bezierVertex(-155.0, -195.0, -155.0, -196.0, -155.0, -195.0);
  bezierVertex(-155.0, -194.0, -194.0, -158.0, -196.0, -158.0);
  bezierVertex(-198.0, -158.0, -59.0, -3.0, -61.0, -2.0);
  bezierVertex(-63.0, -1.0, -28.0, -31.0, -28.0, -31.0);
  bezierVertex(-28.0, -31.0, -152.0, -195.0, -153.0, -195.0);
  endShape();
  stroke(#6B4615);
  stroke(#F1E1CA);
  beginShape();
  fill(#7B4B3F);
  vertex(-151.0, -197.0);
  bezierVertex(-151.0, -197.0, -151.0, -197.0, -151.0, -197.0);
  bezierVertex(-151.0, -197.0, -20.0, -36.0, -20.0, -36.0);
  bezierVertex(-20.0, -36.0, -33.0, -24.0, -33.0, -24.0);
  bezierVertex(-33.0, -24.0, -162.0, -189.0, -162.0, -190.0);
  bezierVertex(-162.0, -191.0, -151.0, -200.0, -152.0, -200.0);
  endShape();
  popMatrix();
  fill(#8CA5B4);
  ellipse(0, 0, 6, 6);
}
