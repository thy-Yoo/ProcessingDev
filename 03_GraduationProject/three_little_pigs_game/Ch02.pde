int pig_step=0;

int chGObri=0;
int chGOarrI=0;

void chapter02() {
 
  kinect.update(); 
  depthImage = kinect.depthImage(); 
  image(map, 0, 0, canvasW, canvasH);
  //All images MUST Here (push~Pop) , But map is exception.
  pushMatrix();
  scale(-1.9, 1.9);  
  tint(255, 220);
  
  //image(depthImage, 0, 0, canvasW, canvasH);
/*
  for(int index=0; index<wolfSize; index++){
    if(leftwolf[index].exist==death || leftupwolf[index].exist==death || rightwolf[index].exist==death || rightupwolf[index].exist==death){
       hit1.play();
       hit1.rewind();
    }
    
  }*/

  for (int index=0; index<3; index++) {
    cloud[index].display();
    cloud[index].moving();

    house[index].display();
    if(printText==true){
      house[index].data();   
    }

    if (house[index].exist == death) {
      fire[index].display();
      fire[index].alpha-=20;
    }
  }

  for (int index=0; index<wolfSize; index++) {
    //if(leftwolf[index].px>160){
    //  leftwolf[index].exist = alive;
    //}
    //if(leftupwolf[index].px>160){
    //  leftupwolf[index].exist = alive;
    //}
    //if(rightwolf[index].px<-160){
    //  rightwolf[index].exist = alive;
    //}
    //if(rightupwolf[index].px<-160){
    //  rightupwolf[index].exist = alive;
    //}
    
    leftwolf[index].far_approach_arrived();
    leftwolf[index].moving();

    leftupwolf[index].far_approach_arrived();
    leftupwolf[index].moving();
    
    rightwolf[index].far_approach_arrived();
    rightwolf[index].moving();
    
    rightupwolf[index].far_approach_arrived();
    rightupwolf[index].moving();
    /* step left01 is left->house1 */

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /*Left up*/
    if (leftupwolf[index].step==leftA_up || leftupwolf[index].step==leftC_up || leftupwolf[index].step==leftDownC_up || leftupwolf[index].step==gameOver) {
      leftupwolf[index].displayLeftWolf();
    } else {
      leftupwolf[index].displayRightWolf();
    }
    
    textSize(10);
    if(printText==true){
      leftupwolf[index].data();
    }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /*Left*/
    if (leftwolf[index].px<house[2].px && (leftwolf[index].step==leftUP || leftwolf[index].step==gameOver)) {
      leftwolf[index].displayRightWolf();
    } else {
      leftwolf[index].displayLeftWolf();
    }
    textSize(10);
    if(printText==true){
      leftwolf[index].data();
    }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    /* step left01 is left->house1 */
    if (rightwolf[index].px>house[2].px && (rightwolf[index].step==rightUP || rightwolf[index].step==gameOver)) {
      rightwolf[index].displayLeftWolf();
    } else {
      rightwolf[index].displayRightWolf();
    }
     textSize(10);
     if(printText==true){
      rightwolf[index].data();
     }
    
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////    
    
    /* step left01 is left->house1 */
    if (rightupwolf[index].step==rightA_up || rightupwolf[index].step==rightC_up || rightupwolf[index].step==rightDownC_up || rightupwolf[index].step==gameOver) {
      rightupwolf[index].displayRightWolf();
    } else {
      rightupwolf[index].displayLeftWolf();
    }
    textSize(10);
    if(printText==true){
      rightupwolf[index].data();
    }
    
  }
  /*Win*/
  if(leftwolf[0].exist==death && leftwolf[1].exist==death && leftwolf[2].exist==death 
    && leftwolf[3].exist==death && leftwolf[4].exist==death && leftwolf[5].exist==death 
    &&leftupwolf[0].exist==death && leftupwolf[1].exist==death && leftupwolf[2].exist==death 
    && leftupwolf[3].exist==death && leftupwolf[4].exist==death && leftupwolf[5].exist==death 
    &&rightwolf[0].exist==death && rightwolf[1].exist==death && rightwolf[2].exist==death
    &&rightwolf[3].exist==death && rightwolf[4].exist==death && rightwolf[5].exist==death
    && rightupwolf[0].exist==death && rightupwolf[1].exist==death && rightupwolf[2].exist==death
    && rightupwolf[3].exist==death && rightupwolf[4].exist==death && rightupwolf[5].exist==death
    &&( house[0].exist ==alive || house[1].exist ==alive || house[2].exist ==alive)){
      chNum = 777;
    }



  pig_function_ch02();
  
  
  /*Game Over*/
  if (house[0].exist==death && house[1].exist==death && house[2].exist==death) {
    chNum=444;
  }
  popMatrix();
  tint(255, 255);
}