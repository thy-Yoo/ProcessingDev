color basic = #DBFFEF;
int [] px = new int[500];
int [] py = new int[500];

public int [] seedFrame = new int [2];

//draw the point. == like ellipse.
void star(float px, float py, float lineLength, float maxSize, color col){
  for(int i=1; i<6; i++){
    fill(col,130-i*20);
    if(i>2){
      stroke(col,50-i*8);
      line(px+random(-lineLength,0), py, px+random(0,lineLength), py);
      line(px, py+random(-lineLength,0), px, py+random(0,lineLength));
    }
    noStroke();
    ellipse(px, py, i*random(0,maxSize),i*random(0,maxSize));
  }
}

void cassiopeia(){
  star(-10,-81, 5, 1.3, #FFE9CE); //caf ..yellow
  star(45,-47, 5.5, 1.5, basic); 
  star(0,0, 6, 1.6, #CBE0FF); //gamma
  star(20,45,4, 1.2, basic); 
  star(-29,87,4, 1.15, basic); 
}

void andromeda(){
  star(0,100, 5, 1.3, basic);
  star(64,0, 5, 1.3, basic);
  star(30,-30, 5, 1.1, basic);
  star(0,-40, 3, 0.7, basic);
  star(108,-70, 4, 0.8, basic);
  star(112,-145, 5.5, 1.5, basic);
  star(254,-163, 4, 1, basic);
}
void triangulum(){
  star(0,0, 4, 1.15, basic);
  star(60,-40, 4, 1.05, basic);
  star(20,20, 4, 0.6, basic);
}

void etc(int seedIndex, int range, int num){
  seedFrame[seedIndex]++;
     if(seedFrame[seedIndex]>100){
        seedFrame[seedIndex] = 0;
   }
  randomSeed(0);
  for(int i=0; i<80+num; i++){
    star(random(0,1024),random(0,range), 2, 0.4, #BAACC6);
  }
  randomSeed(seedFrame[seedIndex]);//random initialize! 
}
