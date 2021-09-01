//PImage imglayout;
PImage piano;
//PImage window;
PImage woodwall;
PImage bottom;
PImage rapun0,rapun2,rapun2doma,rapun3,rapun4,rapun5;
PImage doma01, doma02, doma03,doma1,doma2, doma3, doma4, doma5;
PImage chair;
PImage curtainL, curtainR;
PImage bed,bed2;
PImage candle, candle2, candle7;
PImage fireplace;
PImage book;

void callimage(){
 // imglayout = loadImage("image/layout.png");
  piano = loadImage("image/piano3.png");
  woodwall = loadImage("image/woodwall4.png");
  bottom = loadImage("image/bottom.png");
  rapun0 = loadImage("image/rapunzel0.png");
  rapun2 = loadImage("image/rapunzel2.png");
  rapun2doma = loadImage("image/rapunzel2doma.png");
  rapun3 = loadImage("image/rapunzel3.png");
  rapun4 = loadImage("image/rapunzel4.png");
  chair = loadImage("image/chair3.png");
  curtainL = loadImage("image/curtainL.png");
  curtainR = loadImage("image/curtainR.png");
  bed = loadImage("image/bed10.png");
  bed2 = loadImage("image/bed10front.png");
  candle = loadImage("image/candle4.png");
  candle2 = loadImage("image/candle5.png");
  candle7 = loadImage("image/candle7.png");
  fireplace = loadImage("image/fire3.png");
  book = loadImage("image/book.png");
  doma01 = loadImage("image/doma01.png");
  doma02 = loadImage("image/doma02.png");
  doma03 = loadImage("image/doma03.png");
  doma1 = loadImage("image/doma1.png");
  doma2 = loadImage("image/doma2.png");
  doma3 = loadImage("image/doma3.png");
  doma4 = loadImage("image/doma4.png");
  doma5 = loadImage("image/doma5.png");
  //fire = loadImage("image/fire.png");
}

void callimages(){
  
  image(candle7, 460,350);
  
  
  
  
  
  //*******************************************************************bed**************
  image(bed, 365, 338);
  if(mouseX>255 && mouseX<435 && mouseY >255 && mouseY <405) {
     image(rapun0,340,310);
     image(bed2,370,338);
  }
  //************************************************************************************
  image(piano, 200, 420);
  //********************************************************************chair************
  image(chair,810,355);
  if(mouseX>700 && mouseX<900 && mouseY >245 && mouseY <435) {
    image(rapun4,780,355);
  }
  //********************************************************************book*************
  if(mouseX>455 && mouseX<510 && mouseY >410 && mouseY <510){
    image(rapun2,320,470);
    image(rapun2doma,320,470);
  
    int step_test = player.bufferSize() / 100;
    for(int i=0; i < player.bufferSize() - step_test; i+=step_test) {
    if(player.mix.get(i)*100>70){image(doma5,320,470);}
    else if(player.mix.get(i)*100>60){image(doma4,320,470);}
    else if(player.mix.get(i)*100>50){image(doma3,320,470);}
    else if(player.mix.get(i)*100>40){image(doma2,320,470);}
    else if(player.mix.get(i)*100>30){image(doma1,320,470);}
    else if(player.mix.get(i)*100>20){image(doma03,320,470);}
    else if(player.mix.get(i)*100>10){image(doma02,320,470);}
    else if(player.mix.get(i)*100>0){image(doma01,320,470);}
    else {}
    }
  }
  if((mouseX>255 && mouseX<435 && mouseY >255 && mouseY <405)||(mouseX>700 && mouseX<900 && mouseY >245 && mouseY <435)||(mouseX>455 && mouseX<510 && mouseY >410 && mouseY <510)){}
  else {image(rapun3,600,300);}
    image(book, 490,465);
    
  //***************************************************************************************
  
}