PImage[] buck = new PImage[17];
PImage deer, ton1, ton2;
void settings(){
size(1024,600);
}
void setup(){
  
  background(255);
  noStroke();
  ton1 = loadImage("ton7.png");
  ton2 = loadImage("ton8.png");
  
  buck[0] = loadImage("buck.png");
  buck[1] = loadImage("buck.png");
  buck[2] = loadImage("buck02.png");
  buck[3] = loadImage("buck03.png");
  buck[4] = loadImage("buck04.png");
  buck[5] = loadImage("buck05.png");
  buck[6] = loadImage("buck06.png");
  buck[7] = loadImage("buck07.png");
  buck[8] = loadImage("buck08.png");
  buck[9] = loadImage("buck09.png");
  buck[10] = loadImage("buck10.png");
  buck[11] = loadImage("buck11.png");
  buck[12] = loadImage("buck12.png");
  buck[13] = loadImage("buck12.png");
  buck[14] = loadImage("buck12.png");
  buck[15] = loadImage("buck13.png");
  buck[16] = loadImage("buck13.png");
  deer = loadImage("deer.png");
  imageMode(CENTER);
  deer.resize(200,200);
}

void draw()
{
  background(#082A2C,50);
  
  //Sky******************************************************************************SKY GRADATION
  for(int i=0; i<600; i++){
    //stroke(#001E2C,255-i*0.5);
    stroke(#000202,255-i*0.3);
    stroke(#0C080D,255-i*0.4);
    
    line(0,i, 1024,i);
  }
 
  //Lake**************************************************************************************LAKE
  for(float i=1; i<1.1; i+=0.005){
    pushMatrix();
    translate(530,550); //lake's mid point == 530,550;
    scale(-0.1+i);
    fill(#1e3042,255-(200*i));
    lake();
    popMatrix();
  }
 
   //drawing a night sky -  stars...*********************************************************
   pushMatrix();
   translate(400,200);
   cassiopeia();
   translate(200,0);
   andromeda();
   translate(80,110);
   triangulum();
   popMatrix();
   etc(0,380,0);
   etc(1,240,80);
   
  //drawing the trees..***********************************************************************
  drawYsystem_layer1();
  clickBuck(mx,my);
  image(deer,800,470);
  drawYsystem_layer2();
   
   
    /* It is values...... Dont remove!!*********************************************************
    fill(#FF0000);
    text("buckframe : " + buckframe,350,300);
    fill(#00FF00);
    text("hideframe : " + hideframe,350,320);
   
    pushMatrix();
    translate(530,550);
    //checkPoint_RED();
    popMatrix();
    checkPoint_GREEN();
    *******************************************************************************************/
    
    
 //Texture********************************************************************************texture  
   imageMode(CENTER);
   blend(ton1,0, 0, 2000, 1000, 0, 0, 1024, 600, DODGE); //SCREEN > op 5 // DODGE > 10
   blend(ton2,0, 0, 2000, 1000, 0, 0, 1024, 600, SCREEN);
   blendMode(NORMAL);
  

 
}
