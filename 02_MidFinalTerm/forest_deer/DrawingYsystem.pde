 void drawYsystem_layer1(){
 
 for(int i=0; i<8; i++){
    //L4
    //fill(#d0d0d0,180-i*20);
    fill(0,200-i*20);
    vib = 0.005;
    Ysystem(230-i*1.2,470,230-i*1.2,330,15,6,10);//
    Ysystem(230+i*1.2,470,230+i*1.2,330,15,6,10);//

    //L5
    //fill(#d0d0d0,180-i*20);
    fill(0,200-i*20);
    vib = 0.005;
    Ysystem(250-i*1.1,440,255-i*1.1,320,15,6,10);//
    Ysystem(250+i*1.2,440,255+i*1.2,320,15,6,10);//
    /*
    //L4_shadow
    fill(0,15);
    quad(240,440, 270,440, 80,700, 60,700);
    */
    //fill(255,255);
    //text("L5",250,400);
    //L6
    //fill(#d0d0d0,180-i*20);
    fill(0,200-i*20);
    vib = 0.02;
    Ysystem(268-i*1.05,422,275-i*1.05,318,15,6,8);//
    Ysystem(268+i*1.1,422,275+i*1.1,318,15,6,8);//
    //fill(255,255);
    //text("L6",250,400);
    //L7
    //fill(#d0d0d0,180-i*20);
    fill(0,100-i*20);
    vib = 0.01;
    Ysystem(288-i*1.05,422,295-i*1.05,318,22,6,7);//
    Ysystem(288+i*1.1,422,295+i*1.1,318,22,6,7);//
    //L8
    //fill(#d0d0d0,180-i*20);
    fill(0,100-i*20);
    vib = 0.01;
    Ysystem(310-i*1.05,422,295-i*1.05,310,22,6,7);//
    Ysystem(310+i*1.1,422,295+i*1.1,310,22,6,7);//
    
   }
}

void drawYsystem_layer2(){
  
  for(int i=0; i<8; i++){
    //L1
    //fill(#cccccc,200-i*20)
    fill(0,200-i*20);
    vib = 0.01;
    Ysystem(100-i*1.5,590,100-i*1.5,380,15,6,12);//
    Ysystem(100+i*1,590,100+i*1,380,15,6,12);//
    
    //L2
    fill(0,200-i*20);
    vib = 0.005;
    Ysystem(200-i*1.3,490,190-i*1.3,350,15,6,10);//
    Ysystem(200+i*1.1,490,190+i*1.1,350,15,6,10);//
    
    //L3.
    //fill(#cccccc,200-i*20);
    fill(0,200-i*20);
    vib = 0.01;
    Ysystem(160-i*1.5,600,150-i*1.5,400,15,6,20);//
    Ysystem(160+i*1,600,150+i*1,400,15,6,20);//

     //6
    //fill(#cccccc,200-i*20);
    fill(0,150-i*20);
    vib = 0.005;
    Ysystem(910-i*1.05,470,900-i*1.05,310,20,8,24);//sx, sy, ex, ey, angle, level
    //fill(255,255);
    //text("6",960,500);
    
    //4.
    //fill(#cccccc,200-i*20);
    fill(0,200-i*20);
    vib = 0.001;
    Ysystem(930-i*1.2,550,930-i*1.2,410,15,6,15);//sx, sy, ex, ey, angle, level
    Ysystem(930+i*1.2,550,930+i*1.2,410,15,6,15);//sx, sy, ex, ey, angle, level
    //fill(255,255);
    //text("4",930,500);
    //2.
    //fill(#cccccc,200-i*20);
    fill(0,200-i*20);
    vib = 0.001;
    Ysystem(960-i*1.2,600,950-i*1.2,450,15,6,15);//sx, sy, ex, ey, angle, level
    Ysystem(960+i*1.2,600,950+i*1.2,450,15,6,15);//sx, sy, ex, ey, angle, level
    //fill(0,255);
    //text("2",955,500);
    //3
    //fill(#cccccc,200-i*20);
    fill(0,200-i*20);
    vib = 0.001;
    Ysystem(1030-i*1.5,600,1020-i*1.5,400,15,6,25);//
    Ysystem(1030+i*1,600,1020+i*1,400,15,6,25);//
    //fill(0,255);
    //text("3",1020,500);
    //1
    //fill(#cccccc,200-i*20);
    fill(0,200-i*20);
    vib = 0.0001;
    Ysystem(1080-i*1,620,1100-i*1,460,22,8,15);//
    Ysystem(1080+i*1.1,620,1100+i*1.1,460,22,8,15);//
    //fill(0,255);
    //text("1",1020,500);
  }
 }