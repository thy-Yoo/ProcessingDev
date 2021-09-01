//This is wolf's motion images..
PImage[] img_leftwolf = new PImage[wolfSize];
PImage[] img_rightwolf = new PImage[wolfSize];

//Declare Object
//This is number of wolf
LeftWolf[] leftwolf = new LeftWolf[wolfSize];

class LeftWolf {
  /*Field*/
  int arrI;
  int num;
  int exist; //is 0 or 1
  int px;    //is position X
  int py;    //is position Y
  int alpha;
  float bri;
  boolean attackStatus;
  int step;
  int imgsize;
  int houseArrived;

  //Add a Constructor , Assign values in the field.
  LeftWolf(int arr, int n, int ex, int x, int y, int a, float b, boolean at, int st, int imgsi, int ha) {
    arrI = arr;
    num = n;
    exist = ex;
    px = x;
    py = y;
    alpha = a;
    bri = b;
    attackStatus = at;
    step = st;
    imgsize = imgsi;
    houseArrived = ha;
  }

  //Method
  /////////////////////////////////////////////////////////////Data////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////Data////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////Data////////////////////////////////////////////////////////////
  void data() {
    fill(0, 0, 255, 255);
    translate(px*3, py*1.9);
    scale(-1, 1);
    text("num="+num, 0, 0-150);
    text("arrI="+arrI, 0, 0-140);
    text("bri="+bri, 0, 0-130);
    if (exist==alive) {
      text("exist=alive", 0, 0-110);
    } else if (exist==death) {
      text("exist=death", 0, 0-110);
    }
    text("(px,py)=("+px+","+py+")", 0, 0-100);
    text("alpha="+alpha, 0, 0-90);
    if (attackStatus==nonAttacked) {
      text("nonAttacked", 0, 0-70);
    } else if (attackStatus==attacked) {
      text("attacked", 0, 0-70);
    }

    if (step==leftA) {
      text("step=A", 0, 0-60);
    } else if (step==leftB) {
      text("step=B", 0, 0-60);
    } else if (step==leftC) {
      text("step=C", 0, 0-60);
    } else if (step==leftD) {
      text("step=D", 0, 0-60);
    } else if (step==leftE) {
      text("step=E", 0, 0-60);
    } else if (step==leftUP) {
      text("step=UP", 0, 0-60);
    } else if(step==gameOver){
      text("step=gameOver",0,0-60);
    } else if(step==leftSTOP){
      text("step=STOP",0,0-60);
    } else {
      text("step ERROR!", 0, 0-60);
    }


    if (houseArrived==far) {
      text("far", 0, 0-50);
    } else if (houseArrived==approach) {
      text("approach", 0, 0-50);
    } else if (houseArrived==arrived) {
      text("arrived", 0, 0-50);
    }

    scale(-1, 1);
    translate(-px*3, -py*1.9);
  }/////////////////////////////////DATA EX..

  ////////////////////////////////////////Frame Count Images............//////////////////////////////////// 
  ////////////////////////////////////////Frame Count Images............////////////////////////////////////
  ////////////////////////////////////////Frame Count Images............////////////////////////////////////
  void framecountLeftWolf() {    
    if (frameCount%9>=0 && frameCount%9<3) {
      image(img_leftwolf[0], px*3, py*1.9, imgsize, imgsize);
    }
    if (frameCount%9>=3 && frameCount%9<6) {         
      image(img_leftwolf[1], px*3, py*1.9, imgsize, imgsize);
    }
    if (frameCount%9>=6 && frameCount%9<9) {         
      image(img_leftwolf[2], px*3, py*1.9, imgsize, imgsize);
    }
  }
  void framecountRightWolf() {    
    if (frameCount%9>=0 && frameCount%9<3) {
      image(img_rightwolf[0], px*3, py*1.9, imgsize, imgsize);
    }
    if (frameCount%9>=3 && frameCount%9<6) {        
      image(img_rightwolf[1], px*3, py*1.9, imgsize, imgsize);
    }
    if (frameCount%9>=6 && frameCount%9<9) {        
      image(img_rightwolf[2], px*3, py*1.9, imgsize, imgsize);
    }
  }///////////////////////////Frame Count Images... EX..


  ////////////////////////////////////////Display Wolfs....................////////////////////////////////
  ////////////////////////////////////////Display Wolfs....................////////////////////////////////
  ////////////////////////////////////////Display Wolfs....................////////////////////////////////

  void displayRightWolf() {
    tint(255);
    if (exist==alive) {
      if (houseArrived == far) {
        framecountRightWolf(); //For kinect, Must px*3 and py*1.9 !!!
      } else if (houseArrived == approach) {
        image(img_rightwolf[3], px*3, py*1.9, imgsize, imgsize); //For kinect, Must px*3 and py*1.9 !!!
      } else if (houseArrived == arrived) {
        image(img_rightwolf[4], px*3, py*1.9, imgsize, imgsize); //For kinect, Must px*3 and py*1.9 !!!
      }
    } else if (exist==death) { //dead
      if (alpha>-50) {
        alpha-=10;
        py-=2;
      }
      tint(255, alpha);
      image(img_rightwolf[5], px*3, py*1.9, imgsize, imgsize);
    }
  } //displaydisplayRighttWolf


  void displayLeftWolf() {
    tint(255);
    if (exist==alive) {
      if (houseArrived == far) {
        framecountLeftWolf(); //For kinect, Must px*3 and py*1.9 !!!
      } else if (houseArrived == approach) {
        image(img_leftwolf[3], px*3, py*1.9, imgsize, imgsize); //For kinect, Must px*3 and py*1.9 !!!
      } else if (houseArrived == arrived) {
        image(img_leftwolf[4], px*3, py*1.9, imgsize, imgsize); //For kinect, Must px*3 and py*1.9 !!!
      }
    } else if (exist==death) { //dead
    
      if (alpha>-50) {
        alpha-=10;
        py-=2;
      }
      tint(255, alpha);
      image(img_leftwolf[5], px*3, py*1.9, imgsize, imgsize);
    } //else if (exist==death)
  } //displayLeftWolf

  /************************************************* THIS IS WOLF's MOVING!!! **********************************************************/
  /************************************************* THIS IS WOLF's MOVING!!! **********************************************************/
  /************************************************* THIS IS WOLF's MOVING!!! **********************************************************/
  /************************************************* THIS IS WOLF's MOVING!!! **********************************************************/
  /************************************************* THIS IS WOLF's MOVING!!! **********************************************************/
  /************************************************* THIS IS WOLF's MOVING!!! **********************************************************/
  /************************************************* THIS IS WOLF's MOVING!!! **********************************************************/

  /////////////////////////////////////////////////////far_approach_arrived//////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////far_approach_arrived//////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////far_approach_arrived//////////////////////////////////////////////////////////////
  void far_approach_arrived() {
    houseArrived=far;
    ///////////////////////////////////////////////////house[0]'s fire
    if(px<house[0].px +disM && step==leftA){
      if(house[0].attackingWolfNum == num){
        houseArrived=approach;
      }      
      if(house[0].attackingWolfNum == non){
        house[0].attackingWolfNum=num;
      }
    }
    if(px<house[0].px +disS && px>house[0].px && step==leftA){
      if(house[0].attackingWolfNum == num){
        houseArrived=arrived;
      }      
    }
    
    ///////////////////////////////////////////////////house[1]'s fire
    if(px<house[1].px +disM && step==leftB){
      if(house[1].attackingWolfNum == num){
        houseArrived=approach;
      }      
      if(house[1].attackingWolfNum == non){
        house[1].attackingWolfNum=num;
      }
    }
    if(px<house[1].px +disS && px>house[1].px &&  step==leftB ){
      if(house[1].attackingWolfNum == num){
        houseArrived=arrived;
        
      }      
    }
    ///////////////////////////////////////////////////house[2]'s fire
    if(py<house[2].py +disM && (step==leftD || step==leftUP)){
      if(house[2].attackingWolfNum == num){
        houseArrived=approach;
      }      
      if(house[2].attackingWolfNum == non){
        house[2].attackingWolfNum=num;
      }
    }
    if(py<house[2].px +disS && py>house[2].py &&  (step==leftD || step==leftUP) ){
      if(house[2].attackingWolfNum == num){
        houseArrived=arrived;
        
      }      
    }
    
    
    
  }//far_approach_arrived()


  void moving() {
    if( (house[0].exist==death && house[1].exist==death && house[2].exist==death) || exist==death){
      step=leftSTOP;
    }
   
    else if (step==leftA) { //about StepA
      if (px>=house[0].px) {
        px-=1;
      }
      else if (px<house[0].px) {
        house[0].exist=death;
        if (house[1].exist==alive) {
          step=leftB;
      } else if (house[1].exist==death && house[2].exist==alive) {
          step=leftD;
      } else {
        step=leftSTOP;
      }
      }
      
      
    } else if (step==leftB) {
      if(house[1].exist==death && house[2].exist==alive){
        step=leftUP;
      }else if(house[1].exist==alive){
        px-=1;
        if(px<house[1].px){
          house[1].exist=death;
        }
      }
    } else if (step==leftC) {
    } else if (step==leftD) {
      if(px<house[2].px){
        house[2].exist=death;
      }
      if(px>house[2].px){
        px-=1;
      }
      if(py>house[2].py){
        py-=2;
      }
    } else if (step==leftE) {
        
    } else if (step==leftUP) {
      if(py<=house[2].py){
        house[2].exist=death;
      }
      if(py>house[2].py){
        py-=2;
      }
      if(px>house[2].px){
        px-=1;
      }
      if(px<house[2].px){
        px+=1;
      }
    }
  }//void moving()
}//class