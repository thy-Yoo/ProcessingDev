//When Game is over...
PImage img_gameOver;
int gameOver_frameCount=0;
void chGameOver(){
  gameOver_frameCount++;
  
  kinect.update(); 
  depthImage = kinect.depthImage(); 
   
  image(img_gameOver,width/2, height/2);
    
    for(int j=-100 ; j<100 ; j++){
          chGOarrI  = (int)(  320)  + (240 + j)*640;
       for(int i=-100 ; i<100 ; i++){
         chGObri = (int) brightness(depthImage.pixels[chGOarrI +i]);
           if( chGObri >175){
             if(gameOver_frameCount>150){
               chNum=0;
             }
         }
     }
   }  
}


void newing(){
  ch01_frameCount =0;
  System.out.println("JUMP");
  mov = new Movie (this,"intro.mp4");
  
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