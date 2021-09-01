PImage img_win;
int chWin_aarI=0;
int chWin_bri =0;
int win_frameCount=0;
void chWin(){
  image(img_win,width/2,height/2);
  win_frameCount++;
  kinect.update(); 
  depthImage = kinect.depthImage();
   

      for(int j=-100 ; j<100 ; j++){
         chWin_aarI  = (int)(  320)  + (240 + j)*640;
       for(int i=-100 ; i<100 ; i++){
         chWin_bri = (int) brightness(depthImage.pixels[chWin_aarI +i]);
           if( chWin_bri >175){
             if(win_frameCount>150){
               chNum=0;
             }
         }
     }
   
   
    }
  
  
  
}