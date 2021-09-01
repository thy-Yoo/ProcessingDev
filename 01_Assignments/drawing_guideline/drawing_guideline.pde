PImage img,btn1,btn2,txt,rebtn1,rebtn2;
PFont font;
void settings(){
  size(800,600);
}
void setup(){

frameRate(60);
img = loadImage("star70.png");
btn1 = loadImage("btn1.png");
btn2 = loadImage("btn2.png");
rebtn1 = loadImage("btn3.png");
rebtn2 = loadImage("btn4.png");
txt = loadImage("txt3.png");
font = loadFont("HoonProvR-30.vlw");
textFont(font);
imageMode(CENTER);
rectMode(CENTER);
ellipseMode(CENTER);
background(255);
fill(0);
rect(400,250,760,450);
}
  
 int num = 200;
 int[] x = new int[num];
 int[] y = new int[num];
 int i=0;
 int count;
 int[] xtrash = new int[num];
 int[] ytrash = new int[num];
void draw(){
  
    fill(0);
    rect(40,60,100,40);    
  
    fill(255);
    text(count, 40, 60);
    if(mousePressed==true){
      if(count<num){
        x[count]=mouseX;
        y[count]=mouseY;
        fill(#4379FF);
        ellipse(x[count], y[count], 7, 7);
        count++; 
      }  
    }
    if(mouseButton == LEFT && mouseX>660 && mouseX<790 && mouseY>440 && mouseY<560){
        fill(0);
        rect(400,250,760,450);
        if(i<num){
          image(img,x[i],y[i]);
          if(i<45){ 
            fill(0,255-i*5.9);
            rect(400,250,760,452);
          }
          else if(i>175){ 
            fill(0,(i-175)*10.2);
            rect(400,250,760,452);
          }
          i++;
        }
    }
    fill(255);
    noStroke();
    rect(7,300,26,605);
    rect(793,300,26,605);
    rect(400,9,805,35);
    rect(400,537,805,140);
    
    
    fill(240);
    image(btn1,725,520);
    if(mouseX>660 && mouseX<790 && mouseY>460 && mouseY<580){
      image(btn2,725,520);
    }
    
    image(rebtn1,580,520);
    if(mousePressed==true && mouseX>515 && mouseX<645 && mouseY>460 && mouseY<580){
      count=0;
      i=0;
      image(rebtn2,580,520);
    }
    image(txt,270,535);
    

}
