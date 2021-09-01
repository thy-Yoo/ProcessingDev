Ball ball;
Controler controler;
Wall wall;
Life life;
Brick[] brick = new Brick[20];

public final int up = 1;
public final int down = -1;
public final int die = 0;
public final int live = 1;
void settings(){
  size(600,400);
}
void setup(){
  
  frameRate(200);
  ball = new Ball(320,300,1);//pX,pY,direction
  controler = new Controler(300,0);//pX
  wall = new Wall(0,0,0,0);
  
 life= new Life(loadImage("heart.png"),540,5);
 
  for(int i=0; i<10; i++){
    brick[i] = new Brick(75+50*i,100,255,10,0,1);//pX, pY, opacity, size, distance, breakable
    brick[i+10] = new Brick(75+50*i,121,255,10,0,1);//pX, pY, opacity, size, distance, breakable
  }
}

void draw(){
  background(0);
  ball.drawing();
  controler.pX=mouseX;
  controler.drawing();
  for(int i=0; i<5; i++){
    life.drawing();
  }
  for(int i=0; i<20; i++){
    brick[i].drawing();
  }
  
}
  
