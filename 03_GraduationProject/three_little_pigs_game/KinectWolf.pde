import SimpleOpenNI.*; 
SimpleOpenNI  kinect;
PImage depthImage, gImage;
int wolfSize =6;
int detectwolf=160;
int detectbri=198;


void kinecting_wolf() {
  //kinect.update(); 
  //depthImage = kinect.depthImage(); 

  for (int index=0; index<wolfSize; index++) {
    for (int j=-30; j<30; j++) {
      leftwolf[index].arrI = (int)(320+leftwolf[index].px )+(int)(240+leftwolf[index].py + j)*640; //320 is kinect's width/2, 240is kinect's height/2 , 1.9is scale...
      for (int i=-30; i<30; i++) {

        leftwolf[index].bri = brightness(depthImage.pixels[leftwolf[index].arrI + i]);   

        if (leftwolf[index].bri > detectbri && leftwolf[index].exist==alive  && leftwolf[index].px<detectwolf) {  //first wolf  ;165
        
         soundwolf(leftwolf[index].exist);
          
         
          leftwolf[index].attackStatus=nonAttacked;
          leftwolf[index].exist=death;
          
System.out.println("SSSS0  " + index + " " + leftwolf[index].exist);  
            
        } else {
          leftwolf[index].attackStatus=attacked;
        }
      }
    }
  }
}

void kinecting_wolf_leftup() {
  //kinect.update(); 
  //depthImage = kinect.depthImage(); 

  for (int index=0; index<wolfSize; index++) {
    for (int j=-30; j<30; j++) {
      leftupwolf[index].arrI = (int)(320+leftupwolf[index].px)+(int)(240+leftupwolf[index].py + j)*640; //320 is kinect's width/2, 240is kinect's height/2 , 1.9is scale...
      for (int i=-30; i<30; i++) {
        leftupwolf[index].bri = brightness(depthImage.pixels[leftupwolf[index].arrI + i]);   

        if (leftupwolf[index].bri > detectbri && leftupwolf[index].exist==alive && leftupwolf[index].px<detectwolf) {  //first wolf  ;165
        
  System.out.println("SSSS1");  
       soundwolf(leftupwolf[index].exist);
          
          leftupwolf[index].attackStatus=nonAttacked;
          leftupwolf[index].exist=death;
          
        } else {
          leftupwolf[index].attackStatus=attacked;
        }
      }
    }
  }
}


void kinecting_wolf_right() {
  //kinect.update(); 
  //depthImage = kinect.depthImage(); 

  for (int index=0; index<wolfSize; index++) {
    for (int j=-30; j<30; j++) {
      rightwolf[index].arrI = (int)(320+rightwolf[index].px)+(int)(240+rightwolf[index].py + j)*640; //320 is kinect's width/2, 240is kinect's height/2 , 1.9is scale...
      for (int i=-30; i<30; i++) {
        rightwolf[index].bri = brightness(depthImage.pixels[rightwolf[index].arrI +i]);



        if (rightwolf[index].bri > detectbri && rightwolf[index].exist==alive && rightwolf[index].px>-detectwolf) {  //first wolf  ;165
        
  System.out.println("SSSS2");  
          soundwolf(rightwolf[index].exist);
          
          rightwolf[index].attackStatus=nonAttacked;
          rightwolf[index].exist=death;
        } else {
          rightwolf[index].attackStatus=attacked;
        }
      }
    }
  }
}

void kinecting_wolf_rightup() {
  //kinect.update(); 
  //depthImage = kinect.depthImage(); 

  for (int index=0; index<wolfSize; index++) {
    for (int j=-30; j<30; j++) {
      rightupwolf[index].arrI = (int)(320+rightupwolf[index].px)+(int)(240+rightupwolf[index].py +j)*640; //320 is kinect's width/2, 240is kinect's height/2 , 1.9is scale...
      for (int i=-30; i<30; i++) {
        rightupwolf[index].bri = brightness(depthImage.pixels[rightupwolf[index].arrI + i]);



        if (rightupwolf[index].bri > detectbri && rightupwolf[index].exist==alive && rightupwolf[index].px>-detectwolf) {  //first wolf  ;165
        
  System.out.println("SSSS3");  
         soundwolf(rightupwolf[index].exist);
         
          rightupwolf[index].attackStatus=nonAttacked;
          rightupwolf[index].exist=death;
        } else {
          rightupwolf[index].attackStatus=attacked;
        }
      }
    }
  }
}

void soundwolf(int state){
  if(state == alive)
  {
    hit1.rewind();
    hit1.play();
  }
}