public float mx=0, my=0;
public int direction=1;
public int buckframe=0, hideframe=0;
public void mousePressed(){
  mx = mouseX;
  my = mouseY;
}

void clickBuck(float x, float y){
  
  if(direction == 1){ //hideframe -> 1~25
    if(hideframe==0){
    image(buck[0], 250,435);
    }
    hideframe++;
    if(hideframe<=16){
        buckframe = hideframe;
      }
    else if(hideframe>16 && hideframe <25){
        buckframe=16;
      }
    else if(hideframe>=25){ //exception..
      hideframe = 25;
    }
    if(hideframe ==25){
      direction = -1;
    }
    
    if(x>280 && x<360 && y>270 && y<350){
       image(buck[buckframe], 250+buckframe*1.3,435+buckframe);    
    }
    else{
      hideframe = 0;
      buckframe = 0;
    }
  }
  
  
  if(direction == -1){
    hideframe--;
    
    if(hideframe>0 && hideframe < 16){
        buckframe = hideframe;
    }
    else if(hideframe <= 0){ //exception..
         buckframe=0;
         hideframe=0;
      }
    else if(hideframe >= 16){
      buckframe = 16;
    }
    else{
      buck[0] = loadImage("buck.png");
      hideframe = 25;
      buckframe = 16;
    }
    
    if(hideframe == 0 ){
      hideframe = 0;
      buckframe=0;
      direction = 1;
    }
    
    if(x>280 && x<360 && y>270 && y<350){
       image(buck[buckframe], 250+buckframe*1.3,435+buckframe);    
    }   
  }  
}
