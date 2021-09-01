Movie mov;
public int ch01_frameCount = 0;
int ch01bri=0;
int ch01arrI=0;

void ch01() {
  
  //newing();
   mov.play();
   
  ch01bri=0;
  ch01_frameCount++;
  tint(255,255);
  image(mov, width/2, height/2, mov.width, mov.height/1.08-50);
  
  
  
  
  //image(start, width/2, height/2,width, height);
  kinect.update();  
  depthImage = kinect.depthImage(); 
  for(int j=-100 ; j<100 ; j++){
    ch01arrI  = (int)(   320 ) +( 240 +j)*640;
     for(int i=-100 ; i<100 ; i++){
       ch01bri = (int) brightness(depthImage.pixels[ch01arrI + i]);
         if( ch01bri >220){
           if(ch01_frameCount>20){
             
             chNum=999;
         }
       }
     }
   }
   
  
  
 
}

void movieEvent(Movie movie) {  
  movie.read();
}