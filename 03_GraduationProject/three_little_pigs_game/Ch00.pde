//start
int ch00bri=0;
int ch00arrI=0;
PImage start;


void ch00(){
  gameOver_frameCount =0;
  win_frameCount =0;
  image(start, width/2, height/2,width, height);
  
  
   kinect.update();  
   depthImage = kinect.depthImage();    
   for(int j=-100 ; j<100 ; j++){
    ch00arrI  = (int)(  320)  + (240 + j)*640;
     for(int i=-100 ; i<100 ; i++){
       ch00bri = (int) brightness(depthImage.pixels[ch00arrI +i]);
         if( ch00bri >220){
         chNum=1;
       }
     }
   }
   
  
  
  
  
  
}