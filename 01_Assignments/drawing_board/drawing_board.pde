int colorPicker_x,colorPicker_y = 0;
int brightnessBar_y =0;
int color_H=0,color_S=0,color_B=200;
int selectedColor_H=0,selectedColor_S=0,selectedColor_B=0;
int hue=0,saturation=0,brightness=200;
color hexColor;

//"t_" ... is translated position values.
int t_colorPickerX=740;
int t_colorPickerY=180;
int t_canversX=40;
int t_canversY=170;
int t_brushX=260;
int t_brushY=-30;

String letters = "";

int value = 0;

//pen~ is pen's properties.
int penWidth=15;
int penOpacity=200;
int penType=1;
int selectPositionX=0;
int selectPositionY=0;
int selectPositionX2=0;
int selectPositionY2=0;

PFont font;
PImage icon_brushSize;
PImage icon_colorpicker;
PImage icon_eraser;
PImage cursor_x;
PImage cursor_spoid;
PImage current;

int textPositionX;
int textPositionY;
void settings(){
size(1000, 600);
}
void setup() {
  
  background(#E3E3E3);
  noStroke();
  smooth();
  icon_brushSize = loadImage("brush.png");
  icon_brushSize.resize(23,20);
  icon_colorpicker = loadImage("colorpicker.png");
  icon_colorpicker.resize(19,19);
  icon_eraser = loadImage("eraser.png");
  icon_eraser.resize(24,26);
  
  cursor_x = loadImage("x.png");
  cursor_spoid= loadImage("spoid.png");
  
  
  current = loadImage("../current.png");
  font = loadFont("MoolBoran-20.vlw");
  font = loadFont("MoolBoran-30.vlw");
  textFont(font);
  selectedColor_H=0;selectedColor_S=0;selectedColor_B=200; //initialRize
  //Making a canvers.
  fill(#CCD1D0);
  rect(t_canversX-4,t_canversY-4,650+8,400+8);
  fill(255);
  rect(t_canversX,t_canversY,650,400); 
  
}
void draw() {
  colorMode(RGB,255);
  colorMode(HSB,200);
  if(mouseY >-10+t_colorPickerY&& mouseY <280+t_colorPickerY){
    if(mousePressed == true){
      if(mouseX > t_colorPickerX && mouseX< t_colorPickerX + 200){
        selectedColor_S=mouseX-t_colorPickerX; 
        selectedColor_B=(mouseY-t_colorPickerY);
      }
      else if(mouseX > t_colorPickerX +210){
        selectedColor_H =mouseY-t_colorPickerY;
        
      }
    }
  }
  //Making a color picker.***************************************************************8colorPicker
  hue = selectedColor_H;
  brightness=200;
  pushMatrix();
  translate(t_colorPickerX,t_colorPickerY);
  
  noStroke();
  fill(#BBC8C7);
  fill(#CCD1D0);
  rect(-14,-14,248,288);
  fill(200);
  rect(-10,-10,240,280);//colorPickerBox.
  for (colorPicker_y = 0; colorPicker_y < 200; colorPicker_y++) {
    for (colorPicker_x = 0; colorPicker_x < 200; colorPicker_x++) {
      fill(hue,saturation,brightness);
      noStroke();
      rect(colorPicker_x, colorPicker_y,1,1);
      saturation++;
    }
   saturation =0;
   brightness--;
  }
  if(penType==2){
     if(mousePressed == true){
      colorMode(HSB,200);
      color theColor = get(mouseX, mouseY);
      noStroke();
      selectedColor_H = (int)hue(theColor);
      selectedColor_S = (int)saturation(theColor);
      selectedColor_B = 200-(int)brightness(theColor);
      fill(0);
      //text ("#" + hex(theColor, 6), 140, 220);
     }
   }
  //Making a Brightness Bar.**************************************************************************BrightnessBar
  for(int j=0; j<200; j++){
    fill(j,selectedColor_S,selectedColor_S);
    noStroke();
    rect(210,j,10,1);
  }
  //Making a color Show Box.*************************************************************************color Show Box
  fill(selectedColor_H,selectedColor_S,200-selectedColor_B);
  rect(0,210,80,50);
  textSize(20);
  fill(10);
  text("H:"+selectedColor_H+"\nS:"+selectedColor_S+"\nB:"+(200-selectedColor_B),100,224);
  hexColor = color(selectedColor_H,selectedColor_S,200-selectedColor_B);
  text("#"+hex(hexColor,6),144,260);
  popMatrix();
  
  //top bar***********************************************************************201366229YooJiyeon'sSimplyPainter
  fill(#BBC9C8);
  rect(0,0,1000,30);
   fill(0);
   textSize(20);
   text("201366229 YooJiyeon's Simply Painter",30,20); 
 //icon.*****************************************************************************************************ICON:P
   fill(0);
   rect(5,5,20,20); 
   fill(200);
   textSize(30);
   text("P",10,22);
   strokeWeight(1);
 //New.****************************************************************************************************MENU:NEW
   fill(#2F383E);
   stroke(0);
   rect(0,30,60,30);
   if(mouseX > 0 && mouseX < 60 && mouseY > 30 && mouseY < 60){
     noFill();
     stroke(180);
     rect(2,32,55,25);
     if(mousePressed == true){
       fill(0);
       stroke(0);
       rect(0,30,60,30);
     }
   }
   fill(200); 
   textSize(30);
   text("New",10,52);
 //Save.*************************************************************************************************MENU:SAVE
   fill(#2F383E);
   stroke(0);
   rect(60,30,60,30);
   if(mouseX > 60 && mouseX < 120 && mouseY > 30 && mouseY < 60){
     noFill();
     stroke(180);
     rect(62,32,55,25);
     if(mousePressed == true){
       fill(0);
       stroke(0);
       rect(60,30,60,30);
       save("pictures.png");
     }
   }
   fill(200); 
   textSize(30);
   text("Save",70,52);
   
  //Help.*************************************************************************************************MENU:HELP
   fill(#2F383E);
   stroke(0);
   rect(120,30,60,30);
   if(mouseX > 120 && mouseX < 180 && mouseY > 30 && mouseY < 60){
     noFill();
     stroke(180);
     rect(123,32,55,25);
     if(mousePressed == true){
       fill(0);
       stroke(0);
       rect(120,30,60,30);
         fill(100);
         rect(120,60,160,40);
         fill(0);
         textSize(20);
         text("program Info...",130,90);
     }
   }
   fill(200); 
   textSize(30);
   text("Help",132,52);
   if(mouseX <120 || mouseY > 300 || mouseY <30 || mouseY >100){
         fill(#E3E3E3);
         noStroke();
         rect(120,60.6,161,40);
   }
   if(penType == 2){
     fill(#E2E2E2);
     noStroke();
     rect(75,110,565,40);//initailize
     //popup Message
     fill(#FF40B9);
     noStroke();
     rect(120,110,470,40);
     fill(#E2E2E2);
     triangle(120,110,120,150,140,130);
     triangle(590,110,590,150,565,130);
     fill(0);
     text("Click a Color that you want to Extract.",190,136);
   }
   else if(penType == 4){
     fill(#E2E2E2);
     noStroke();
     rect(75,110,565,40);//initailize
     //popup Message.
     fill(#E2E222);
     noStroke();
     rect(75,110,565,40);
     fill(#E2E2E2);
     triangle(75,110,75,150, 100,130);
     triangle(640,110,640,150,615,130);
     fill(0);
     text("If You Press the SHIFT KEY, then a perfect circle is drawen.",110,136);
   }
   else{
     fill(#E2E2E2);
     noStroke();
     rect(75,110,565,40);
   }
   
   //brush.**************************************************************************************************brush
   pushMatrix();
   translate(t_brushX,t_brushY);
   noStroke();
   fill(#CCD1D0);
   rect(466,76,248,106);
   fill(200);
   rect(510,80,200,30);
   fill(#162436);
   textSize(22);
   text("BRUSH SIZE",520,100);
   
   for(int i=0; i<20; i++){
     noStroke();
     fill(#162436);
     ellipse(600+i*5,95,i,i);
     if(mouseX > 599 +t_brushX && mouseX <700 +t_brushX && mouseY >80+t_brushY && mouseY <110+t_brushY){
       noFill();
       stroke(#8BF4FF);
       fill(#8BF4FF,120);
       ellipse(mouseX-t_brushX,95,((mouseX-600-t_brushX)/5),((mouseX-600-t_brushX)/5));
       if(mousePressed == true){
         fill(#FF0051);
         noStroke();
         ellipse(mouseX-t_brushX,95,(mouseX-600-t_brushX)/5+1.5,(mouseX-600-t_brushX)/5+1.5);
         penWidth = (mouseX-599-t_brushX)/5;
       }
     }
   }
   //opacity.**********************************************************************************************opacity
   noStroke();
   fill(200);
   rect(510,114,200,30);
   fill(#162436);
   textSize(22);
   text("OPACITY",520,134);
   for(int i=0; i<29; i++){
     noStroke();
     fill(#162436,i*5);
     ellipse(612+i*3,129,17,17);
     if(mouseX > 611 +t_brushX && mouseX <700 +t_brushX && mouseY >113+t_brushY && mouseY <145+t_brushY){
       noFill();
       stroke(#8BF4FF);
       fill(#8BF4FF,20);
       ellipse(mouseX-t_brushX,130,17,17);
       if(mousePressed == true){
         fill(#FFD900);
         noStroke();
         ellipse(mouseX-t_brushX,130,18.5,18.5);
         penOpacity = (mouseX-612-t_brushX)*3;
       }
     }
   }
   //penType_ICON.*************************************************************************************************
   fill(200);
   noStroke();
   rect(510,148,30,30); //1.PEN
   rect(544,148,30,30); //2.SPOID
   rect(578,148,30,30); //3.RECT
   rect(612,148,30,30); //4.ELLIPSE
   rect(646,148,30,30); //5. TEXT
   rect(680,148,30,30); //0.ERASER
   fill(#162436);
   textSize(22);
   image(icon_brushSize,514,153); //1.PEN
   image(icon_colorpicker,550,153); //2.SPOID
   image(icon_eraser,683,150); //0.ERASER
   noFill();
   stroke(0);
   strokeWeight(3);
   rect(584,154,17,16);//3.RECT
   ellipse(628,163,19,19);//4.
   textSize(35);
   text("A",655,172);
   noStroke();
   popMatrix();
   
   //penSelectMotion************************************************************************penSelectMotion
   noFill();
   stroke(#B1D3C7);
   strokeWeight(1);
   if(mouseX > 510 +t_brushX && mouseX < 540 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    rect(512 +t_brushX,150+t_brushY,25,25);
   }
   if(mouseX > 544 +t_brushX && mouseX < 574 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    rect(546 +t_brushX,150+t_brushY,25,25);
   }
   if(mouseX > 578 +t_brushX && mouseX < 608 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    rect(580 +t_brushX,150+t_brushY,25,25);
   }
   if(mouseX > 612 +t_brushX && mouseX < 642 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    rect(614 +t_brushX,150+t_brushY,25,25);
   }
   if(mouseX > 646 +t_brushX && mouseX < 676 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    rect(648 +t_brushX,150+t_brushY,25,25);
   }
   if(mouseX > 680 +t_brushX && mouseX < 710 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    rect(682 +t_brushX,150+t_brushY,25,25);
   }
   noStroke();
   
   if(mouseX > textPositionX +40 || mouseX < textPositionX-40 || mouseY > textPositionY +40 || mouseY < textPositionY-40){
      letters="";
    }
   
   if(penType == 5 && textPositionX > t_canversX && textPositionX < t_canversX+650 && textPositionY > t_canversY && textPositionY < t_canversY+400){
     textSize(penWidth*1.5);
     fill(200);
     noStroke();
     rect(textPositionX-1,textPositionY-18,textWidth(letters)+18,30);
     fill(selectedColor_H,selectedColor_S,200-selectedColor_B,penOpacity);
     stroke(0);
     strokeWeight(0);
     if(letters.length() > 0 ){
       line(textPositionX+textWidth(letters)+2, textPositionY-16, textPositionX+textWidth(letters)+2, textPositionY+8);
     }
     text(letters, textPositionX, textPositionY);
   }
   
   cursorImage();
}
void keyPressed() {
  if(penType == 5 && textPositionX > t_canversX && textPositionX < t_canversX+650 && textPositionY > t_canversY && textPositionY < t_canversY+400){
    
    
    
    if(key == BACKSPACE) {
      fill(200);
      noStroke();
      rect(textPositionX,textPositionY,textWidth(letters),30);
      if(letters.length() > 0) {
        letters = letters.substring(0, letters.length() - 1);
      }
    }
    else if(textWidth(letters + key) < width) {
      letters = letters + key;
    }
  }
}

void cursorImage()
{
  if(penType==2){
    if(mouseX > t_canversX && mouseX < t_canversX+650 && mouseY > t_canversY && mouseY < t_canversY+400){
      cursor(cursor_spoid);
    }
    else{
      cursor(cursor_x);
    }
  }
  else{
    cursor(ARROW);
  }
}


void mouseDragged() 
{
  if(mouseX > t_canversX && mouseX < t_canversX+650 && mouseY > t_canversY && mouseY < t_canversY+400){
    //basic Pen. 1.
    if(penType==1){
      fill(selectedColor_H,selectedColor_S,200-selectedColor_B,penOpacity);
      noStroke();
      ellipse(mouseX,mouseY,penWidth,penWidth);
    }
    //Eraser. 0.
    else if(penType==0){
      fill(200,penOpacity);
      noStroke();
      ellipse(mouseX,mouseY,penWidth,penWidth);
    }
    
  }
    
}
void mousePressed()
{
  if(mouseX > 0 && mouseX < 60 && mouseY > 30 && mouseY < 60){
    fill(200);
    noStroke();
    rect(t_canversX,t_canversY,650,400); //new Canvers.
  }
  if(mouseX > 510 +t_brushX && mouseX < 540 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    penType=1;
   }
   if(mouseX > 544 +t_brushX && mouseX < 574 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    penType=2;
   }
   if(mouseX > 578 +t_brushX && mouseX < 608 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    penType=3;
   }
   if(mouseX > 612 +t_brushX && mouseX < 642 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    penType=4;
   }
   if(mouseX > 646 +t_brushX && mouseX < 676 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    penType=5;
   }
  if(mouseX > 680 +t_brushX && mouseX < 710 +t_brushX && mouseY > 148+t_brushY && mouseY < 178+t_brushY){
    penType=0;
  }
  
  if(penType==3 || penType==4){
    selectPositionX = mouseX;
    selectPositionY = mouseY;
  }
  else if(penType == 5){
    textPositionX = mouseX;
    textPositionY = mouseY;
  }
}

void mouseReleased()
{
  if(selectPositionX > t_canversX && selectPositionX < t_canversX+650 && selectPositionY > t_canversY && selectPositionY < t_canversY+400){
    if(penType==3 || penType == 4){
      selectPositionX2 = mouseX;
      selectPositionY2 = mouseY;
    }
    noFill();
    stroke(selectedColor_H,selectedColor_S,200-selectedColor_B,penOpacity);
    strokeWeight(penWidth);
    if(penType==3){
      rect(selectPositionX, selectPositionY, selectPositionX2-selectPositionX, selectPositionY2-selectPositionY);
    }
    else if(penType==4){
      float radius;
      radius = sqrt(sq(selectPositionX2-selectPositionX)+sq(selectPositionY2-selectPositionY));
      ellipseMode(CORNER);
      //ellipse(selectPositionX-radius/6, selectPositionY-radius/6, radius, radius);
      if(keyPressed == true){
        if(keyCode == SHIFT){
          
          ellipse(selectPositionX-radius/6, selectPositionY-radius/6, radius, radius);
        }
      }
      else{ 
        ellipse(selectPositionX, selectPositionY, selectPositionX2-selectPositionX, selectPositionY2-selectPositionY);
      }
      ellipseMode(CENTER);
    }
    
    noStroke();
  }
  
}
