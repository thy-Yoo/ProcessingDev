TextClass tc = new TextClass();
BookClass bc = new BookClass();
void settings(){
size(297*2, 420*2);
}
void setup(){
  noStroke();
  background(#ffd8e2);
  rectMode(CENTER);
  ellipseMode(CENTER);
  textAlign(CENTER);
  noStroke();
}
void draw(){
  PFont font0 = loadFont("CulDeSac-48.vlw");
  PFont font = loadFont("JasmineUPC-48.vlw");
  PFont font2 = loadFont("TypoDecoSolidSlash-48.vlw");
  PFont font3 = loadFont("HoonSlimsL-48.vlw");
  PFont font4 = loadFont("AmaticSC-Regular-48.vlw");
 
  textFont(font);
  for(int j=0; j<6; j++){
    rotate(PI/11);
    for(int i=0; i<6; i++){
      translate(-315+i*200,-615+j*200);
        textFont(font);
        tc.pink2();
      translate(315-i*200,615-j*200);
    }
   rotate(-PI/11);
   translate(-75,0);
  }
   translate(75*6,0);
   
  for(int j=0; j<6; j++){
    rotate(PI/11);
    for(int i=0; i<6; i++){
      translate(-297+i*200,-490+j*200);
        textFont(font0);
        tc.white();
        textFont(font);      
        tc.pink1();
      translate(297-i*200,490-j*200);
    }
   rotate(-PI/11);
   translate(-75,0);
  }
   translate(75*6,0);
  
   stroke(#FFE5E9);
   line(25,0, 25,840);
   stroke(#FFEAED);
   line(32,0, 32,840);
   noStroke();
 
   for(int i=0; i<10; i++){
     translate(-290+i*69, -405);
     bc.flower1();
     translate(+290-i*69, +405);
   }
   for(int i=0; i<10; i++){
     translate(-290+i*69, 405);
     bc.flower1();
     translate(+290-i*69, -405);
   }
   for(int j=0; j<16; j++){
     translate(290, -420+j*69);
     bc.flower1();
     translate(-290, +420-j*69);
   }
   
   bc.b1();
   
   translate(0,30);
   
   translate(-151,-288);
   for(int j=0; j<6; j++){
     translate(0,j*27);
     for(int i=0; i<10; i++){
      translate(i*34,0);
      tc.white02();
      translate(-i*34,0);
     }
     translate(0,-j*27);
    }
  translate(151,288);
   
   textFont(font2);
   fill(255);
   rect(300,200,320,152,23);
   fill(#ACBFAB);
   rect(300,200,300,132,19);
   fill(255);
   rect(300,200,297,129,19);
  
  textFont(font4); 
 
  fill(#ACBFAB);
  textSize(38);
  text("ART DESIGN",297,217);
  
  textSize(17);
  text("spring is here and romance is in the air.",298,253);
  
  stroke(#ACBFAB,95);
  line(297-107,232,297+107,232);//251
  noStroke();
  
  translate(257,179);
  tc.texttext();
  translate(-257,-179);
  
  translate(0,-30);
}
//********************************************************************************************
class TextClass{
  
  void texttext(){
    textSize(16);
    fill(#ACBFAB);
    float x=0, y = 0;
    String [] s = {"p","r","o","c","e","s","s","i","n","g","n","o","t","e","b","o","o","k"};
    for(int in=0; in<18; in++){
      rotate(-PI/6+PI/66*in);
      text(s[in],x,y);
      rotate(PI/6-PI/66*in);
      x+=5;      
      y-=1.78;
    }
  }
  
  void white(){
    textSize(20);
    String s = "@o@";
    float sw = textWidth(s);
    float sh = textAscent() + textDescent();
    fill(255);
    
    translate(297,420);
    for(int i=0; i<5; i++){
      text(s,0,0);
      rotate(PI/2.5);
    }
    translate(-297,-420);
  }
  
  void pink1(){
    textSize(35);
    String s = "abc";
    float sw = textWidth(s);
    float sh = textAscent() + textDescent();
    fill(#FFEDEE); 
    
    translate(297,420);
    for(int i=0; i<8; i++){
      text(s,0,0);
      rotate(PI/4);
    }
    translate(-297,-420);
  }
  
  void pink2(){
    textSize(30);
    String s = "%%%%";
    float sw = textWidth(s);
    float sh = textAscent() + textDescent();
    fill(#FFE5E9);
    
    translate(297,420);
    for(int i=0; i<8; i++){
      text(s,0,0);
      rotate(PI/4);
    }
    translate(-297,-420);
  }
  
  void white02(){
    textSize(28);
    String s = "AXC";
    float sw = textWidth(s);
    float sh = textAscent() + textDescent();
    fill(255);
    
    translate(297,420);
    for(int i=0; i<8; i++){
      text(s,0,0);
      rotate(PI/4);
    }
    translate(-297,-420);
  }
}

//********************************************************************************************
class BookClass{
  
  void b1(){
    rectMode(CORNER);

    fill(#E8E8E8);
    rect(0,6,594,16);
    rect(594-16-6,0,16,840);
    rect(0,840-16-6,594,16);
    
    fill(#ACBFAB);
    rect(0,15,594,3);
    rect(594-3-15,0,3,840);
    rect(0,840-3-15,594,3);
    
    fill(#F5E8DC);//#F5E8DC//
    rect(0,0,594,18-2);
    rect(594-18+2,0,18,840);
    rect(0,840-18+2,594,18-2);
    rectMode(CENTER);
  }
  
  void flower1(){
    
    String s = "@um@";
    float sw = textWidth(s);
    float sh = textAscent() + textDescent();
    textSize(40);
    fill(#FFD1DB);
    translate(297,420);
    for(int i=0; i<8; i++){
      text(s,0,0);
      rotate(PI/4);
    }
    translate(-297,-420);  
  }
  
  void flower2(){
    
    String s = "ooo";
    float sw = textWidth(s);
    float sh = textAscent() + textDescent();
    textSize(30);
    fill(#FF6767);
    translate(297,420);
    for(int i=0; i<8; i++){
      text(s,0,0);
      rotate(PI/4);
    }
    translate(-297,-420);
  }
  
}
