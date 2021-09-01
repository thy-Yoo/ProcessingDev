void settings(){
  size(1200,900);
}

void setup() {
  
  background(#FCE5EF); //pink..
  strokeWeight(2);
  strokeCap(ROUND);

  textSize(30);
  fill(0,0,0);
  text("201366229 YOOJIYEON #1",780,880);
}

void draw() {
  
   int x=0, y=0;
   int index=0;
   int cheek_index=0, smile_index=0, girlVersion_index =0;
   
 //BODY.
  for(y=50; x<1100; index++){ //*********************repeat...********************************************************************************************
    stroke(0); //stroke color is black.
    
    //dulli's green leg.
    fill(#00D328);
    if(index==0||index==4){ fill(255,148,211);}
    rect(75+x,150+y,19,50);
    rect(96+x,150+y,19,50);
    
     //dulli's foot.
    fill(255,255,255);
    bezier(65+x,205+y,65+x,190+y,90+x,180+y,95+x,205+y);
    line(65+x,205+y,95+x,205+y);
    bezier(95+x,205+y,100+x,180+y,125+x,190+y,125+x,205+y);
    line(95+x,205+y,125+x,205+y);
    
    //dulli arms.
    fill(#00D328);
    if(index==0||index==4){ fill(255,148,211);}
    quad(90+x,100+y,100+x,100+y,65+x,168+y,50+x,160+y); //left.
    quad(95+x,100+y,105+x,100+y,135+x,160+y,120+x,168+y);//right.
    
    //dulli hands.
    fill(255,255,255);
    ellipse(132+x,164+y,27,22); //right.
    ellipse(58+x,164+y,26,22); //left.
    
    //dulli's green stomach.
    fill(#00D328);
    if(index==0||index==4){ fill(255,148,211);}
    noStroke();
    triangle(74+x,150+y,95+x,181+y,116+x,150+y);
    stroke(0);
    bezier(75+x,150+y,73+x,110+y,117+x,110+y,115+x,150+y);
    bezier(75+x,150+y,70+x,150+y,55+x,185+y,95+x,180+y);
    bezier(95+x,180+y,135+x,185+y,120+x,150+y,115+x,150+y);
  
    //dulli's white stomach.
    noStroke();
    fill(255,255,255);
    triangle(79+x,150+y,95+x,181+y,111+x,150+y);
    fill(255,255,255);
    bezier(80+x,150+y,76+x,120+y,114+x,120+y,110+x,150+y);
    bezier(80+x,150+y,75+x,150+y,60+x,180+y,95+x,180+y);
    bezier(95+x,180+y,130+x,180+y,115+x,150+y,110+x,150+y);
    stroke(0);
    
    if(index==3){//dulli's tongue.
      fill(#EDB1B1);
      bezier(80+x,120+y, 70+x,140+y, 120+x,140+y, 100+x,120+y);
    }
    //dulli face.
    fill(#00D328);
    if(index==0||index==4){ fill(255,148,211);}
    bezier(48+x,90+y,-30+x,-25+y,220+x,-25+y,142+x,90+y);//head1
    bezier(48+x,90+y,45+x,75+y,0+x,140+y,95+x,124+y);//left cheek.
    bezier(95+x,124+y,190+x,140+y,146+x,75+y,142+x,90+y);//right cheek.
    noStroke();
    fill(#00D328);
    if(index==0||index==4){ fill(255,148,211);}
    triangle(48+x,90+y,95+x,125+y,142+x,90+y);
    stroke(0);
    
    //dulli nose.
    fill(255,255,255);
    ellipse(95+x,95+y,24,20);
    
    
  if(index!=6){
    //dulli eyes. 
    fill(255,255,255);
    bezier(58+x,90+y,50+x,52+y,82+x,52+y,76+x,90+y);
    line(58+x,90+y,76+x,90+y);
    fill(255,255,255);
    bezier(112+x,90+y,106+x,52+y,138+x,52+y,130+x,90+y);
    line(112+x,90+y,130+x,90+y);

    if(index==4){x=x-7;} //because of gongsil's eyes.
    fill(0,0,0); //dulli's black eyes.
    ellipse(70+x,80+y,12,20);
    ellipse(125+x,80+y,12,20);
    if(index==4){x=x-5;}
    fill(255,255,255); //dulli's small white eyes.
    ellipse(73+x,82+y,5,10);
    ellipse(127+x,82+y,5,10);
    if(index==4){x=x+12;}
  
    if(index!=5){
      //dulli's eyebrow.
      if(index==1){ y=0;} //dulli's jumping eyebrow.
      noFill();
      arc(70+x, 50+y, 35, 40, PI, 5);  
      arc(117+x, 50+y, 35, 40, 2*PI-1.86, 2*PI);
      if(index==1){ y=50;}
      if(index==0){
        line(50+x,61+y,57+x,72+y);
        line(130+x,72+y,137+x,61+y);
      }
    }
  } 
  if(index==1){//dulli's big eyes. _dulli second characteer.
  fill(255,255,255);
  ellipse(70+x,65+y,45,60);
  ellipse(120+x,65+y,45,60);
  fill(0,0,0);
  ellipse(80+x,70+y,9,9);
  ellipse(130+x,70+y,9,9);
  fill(200,80,100);
  rect(80+x,118+y,29,65);
  }
  if(index==2){ //black dulli.
   fill(0,0,0); //hat.
   ellipse(94+x,10+y, 75,25);
   bezier(75+x,10+y, 15+x,-54+y, 175+x,-54+y, 115+x,10+y);
   bezier(95+x,135+y,40+x,105+y,50+x,165+y,95+x,135+y); //ribon.
   bezier(95+x,135+y,145+x,105+y,140+x,165+y,95+x,135+y);
   rect(87+x,129+y,15,13); 

   fill(random(255),0,random(255));
   line(40+x,60+y,150+x,60+y);
   bezier(40+x,60+y,25+x,110+y,100+x,110+y,90+x,60+y);
   bezier(100+x,60+y,90+x,110+y,165+x,110+y,150+x,60+y);
   fill(180,60,70);
   bezier(80+x,120+y,80+x,140+y,130+x,140+y,120+x,110+y);
  }
  if(index==5){ //sad dilli.
   noFill();
   arc(65+x,40+y,25,30,PI,1.5*PI);
   arc(120+x,40+y,25,30,1.5*PI,2*PI);
   fill(#00D328);
   arc(67+x,92+y,27,59,PI,2*PI,OPEN);
   arc(122+x,92+y,27,59,1*PI,2*PI,OPEN);
   noFill();
   strokeWeight(3);
   arc(67+x,92+y,29,10,0,PI,OPEN);
   arc(122+x,92+y,29,10,0,PI,OPEN);
   strokeWeight(2);
   fill(227,255,255);
   ellipse(55+x,101+y ,12,12);
   ellipse(133+x,101+y ,12,12);
  }
  
  if(index==6){//smile dulli.
   noFill();
   bezier(60+x,120+y,55+x,120+y, 135+x, 135+y, 120+x,115+y);
  }
  x=x+167;
 }//dulli's [for] sentence end.**********************************************************************************************************************************
 
 
 //ddochi start!*************************************************************************************************************************************************
 x=0;

 for(y=300; x<1100; index++){
   stroke(0);
  
  //ddochi's legs. (WHITE)
  fill(255,255,255);
  rect(83+x,210+y, 6,30);
  rect(101+x,210+y, 6,30);
  
  //ddochi arms.
  fill(255,255,255);
  quad(82+x,150+y, 55+x,195+y, 61+x,200+y, 91+x,150+y);//left.
  quad(100+x,150+y, 109+x,150+y, 134+x,195+y, 128+x,200+y);
     
  //ddochi hands.
  fill(255,255,255);
  bezier(55+x,193+y, 12+x,205+y, 58+x,214+y, 63+x,199+y);
  bezier(127+x,199+y, 134+x,214+y, 167+x,205+y, 133+x,193+y);
    
  if(index==9){ //magic wand.
    strokeWeight(9);
    noFill();
    arc(33+x, 220+y, 60, 42, HALF_PI-0.1, 1.5*PI-0.25);
    fill(0,0,0);
    line(30+x,199+y, 180+x,199+y); 
    strokeWeight(2);
   }

  //ddochi's stomach.
  fill(255,255,255);
  y=340;
  bezier(80+x,150+y,76+x,100+y,114+x,100+y,110+x,150+y);
  bezier(80+x,150+y,75+x,150+y,60+x,180+y,95+x,180+y);
  bezier(95+x,180+y,130+x,180+y,115+x,150+y,110+x,150+y);
  noStroke();
  triangle(79+x,150+y,95+x,181+y,111+x,150+y);
  stroke(2);
  y=300;
  fill(255,0,0);
  ellipse(95+x,151+y,40,15);//neckless.
  fill(255,255,255);
  rect(91+x,110+y,9,40);//neck.
  
  //ddochi's legs. (YELLOW)
  fill(255,255,0);
  rect(82+x,230+y, 7,30);
  rect(101+x,230+y, 7,30);

  //ddochi's foot.
  fill(255,255,0);
  y=357;
  bezier(55+x,205+y,35+x,190+y,90+x,180+y,95+x,205+y);
  line(55+x,205+y,95+x,205+y);
  bezier(95+x,205+y,100+x,180+y,155+x,190+y,135+x,205+y);
  line(95+x,205+y,135+x,205+y);
  y=300;
  
 //ddochi face.
  fill(255,255,255);
  if(index==0||index==4){ fill(255,148,211);}
  bezier(50+x,90+y, -20+x,-24+y, 90+x,-24+y, 95+x,10+y);
  bezier(95+x,10+y, 100+x,-24+y, 210+x,-24+y, 140+x,90+y);
  bezier(50+x,90+y,42+x,78+y,0+x,140+y,95+x,118+y);
  bezier(95+x,118+y,190+x,140+y,149+x,76+y,140+x,90+y);
  noStroke();
  triangle(50+x,90+y,95+x,10+y,140+x,90+y);
  fill(255,255,255);
  triangle(50+x,90+y,95+x,119+y,140+x,90+y);
  stroke(2);
  
  //ddochi nose.
  fill(255,255,0);
  arc(94+x, 100+y, 31, 30, PI, 2*PI,OPEN);
  arc(94+x, 115+y, 33, 28, 0, PI,OPEN);
  noStroke();
  rect(75+x, 100.5+y,40,20);
  stroke(2);
  bezier(78+x, 100+y, 1+x, 58+y, 11+x,150+y, 79+x, 120+y);
  bezier(109+x, 100+y, 187+x, 58+y, 177+x, 150+y, 110+x, 120+y);
  line(88+x, 95+y, 90+x, 99+y);
  line(98+x, 99+y, 100+x, 95+y);
  
  if(index!=13){
    //ddochi eyes.
    if(index!=12){
      fill(0,0,0);
      ellipse(73+x,77+y,5,8);
      ellipse(112+x,77+y,5,8);
    }
    
    if(index==8){//ddochi's big eyes. _dulli second characteer.
      //x=175;
      fill(255,255,255);
      ellipse(70+x,65+y,45,60);
      ellipse(120+x,65+y,45,60);
      fill(0,0,0);
      ellipse(80+x,70+y,7,7);
      ellipse(110+x,70+y,7,7);
      fill(200,80,100);
      rect(80+x,118+y,29,65);
  
      fill(225,255,255); //ddochi's jumping eyebraw.
      arc(70+x, 2+y, 35, 40, PI, 6,CHORD);  
      arc(117+x, 2+y, 35, 40, 2*PI-2.86, 2*PI,CHORD);
    } 
  
     
    else if(index==9){//ddochi eyebraws.
      fill(227,255,255);
      arc(67+x, 65+y, 40, 40, PI, 2*PI-0.2,CHORD);  
      arc(120+x, 65+y, 40, 40, PI+0.2, 2*PI,CHORD);
      fill(0,0,0);
      ellipse(94+x,50+y, 170,15);
      bezier(30+x,50+y, -20+x,-24+y, 90+x,-24+y, 95+x,0+y);
      bezier(95+x,0+y, 100+x,-24+y, 210+x,-24+y, 160+x,50+y);
      noStroke();
      triangle(29+x,50+y, 95+x,-1+y ,161+x,50+y);
      stroke(0);
    } 
    else if(index==10){
      fill(227,255,255);
      arc(70+x, 62+y, 38, 40, PI, 6+1,CHORD);  
      arc(117+x, 62+y, 38, 40, 2*PI-2.86-1, 2*PI,CHORD);
      noFill();
      bezier(50+x, 27+y, 55+x, 37+y, 65+x, 30+y, 70+x, 20+y);
      bezier(135+x, 27+y, 130+x, 37+y, 120+x, 30+y, 115+x, 20+y);
    }
    else if(index==12){
     fill(227,255,255);
     arc(70+x, 62+y, 39, 44, PI, 2*PI,CHORD);  
     arc(117+x, 62+y, 39, 44, PI, 2*PI,CHORD);
      
     noFill();
     bezier(50+x, 27+y, 55+x, 30+y, 70+x, 30+y, 70+x, 30+y);
     bezier(135+x, 27+y, 130+x, 30+y, 115+x, 30+y, 115+x, 30+y);   
     }   
    else{
      fill(227,255,255);
      arc(70+x, 62+y, 35, 40, PI, 6,CHORD);  
      arc(117+x, 62+y, 35, 40, 2*PI-2.86, 2*PI,CHORD);
    }
  }
  if(index==12){//ddochi's eyedrop.
    fill(227,255,255);
    bezier(115+x, 77+y, 95+x, 200+y, 140+x, 200+y, 115+x, 74+y);
    fill(0,0,0);
    ellipse(75+x,68+y,5,8);
    ellipse(115+x,68+y,5,8);
  }
 x=x+167;
 }//for2 sentence end.
//ddochi's draw function end.******************************************************************************************************************************************************

//douna START!!********************************************************************************************************************************************************************
  x=0;
 for(y=610; x<1100; index++){
    //douna hair.
   y=602;
  fill(255,255,0);
  noStroke();
  rect(32.5+x,80+y , 127,30);
  stroke(0);
  arc(34+x,88+y, 35,28, 0.5*PI+0.2, 1.5*PI, OPEN);//back left hair.
  arc(39+x,111+y, 35,23, 0.5*PI, 1.5*PI-0.35, OPEN);
  arc(154+x,88+y, 35,28, -0.5*PI, 0.5*PI-0.2, OPEN);//back right hair.
  arc(151+x,111+y, 35,23, -0.5*PI+0.35, 1.5*PI, OPEN);
  
  bezier(35+x,80+y, 0+x,-20+y, 80+x,-20+y, 95+x,0+y);
  bezier(95+x,0+y, 110+x,-20+y, 190+x,-20+y, 155+x,80+y);
  noStroke();
  triangle(35+x,80+y,95+x,-1+y,156+x,80+y);
  stroke(0);
  y=610;
  
  //douna legs.
  fill(255,235,200); 
  ellipse(95+x,178+y, 32,60);
  arc(95+x,215+y, 58,36, PI, 2*PI, CHORD);
  noStroke();
  rect(86+x,180+y, 18,30);
  stroke(0);
  line(95+x,180+y, 95+x, 215+y);
  
   //douna arms.
  fill(255,235,200);
  if(index==0||index==4){ fill(255,148,211);}
  quad(92+x,100+y,102+x,100+y,67+x,168+y,52+x,160+y); //left.
  quad(92+x,100+y,102+x,100+y,132+x,160+y,117+x,168+y);//right.
  
  //douna stomach.
  fill(255,0,0);
  bezier(80+x,150+y,76+x,100+y,114+x,100+y,110+x,150+y);
  bezier(80+x,150+y,75+x,150+y,60+x,180+y,95+x,180+y);
  bezier(95+x,180+y,130+x,180+y,115+x,150+y,110+x,150+y);
  noStroke();
  triangle(79+x,150+y,95+x,181+y,111+x,150+y);
  stroke(0);
  
  //douna face.
  fill(255,235,200);
  bezier(50+x,90+y,-20+x,-24+y,210+x,-24+y,140+x,90+y);//bezier(50,90,0,140,190,140,140,90);
  bezier(50+x,90+y,42+x,78+y,0+x,140+y,95+x,124+y);
  bezier(95+x,124+y,190+x,140+y,149+x,76+y,140+x,90+y);
  noStroke();
  triangle(50+x,90+y, 95+x,124+y ,140+x,90+y);
  stroke(0);
  
  if(index!=20){
    //douna eyes.
    if(index==17) {y=620;}
    if(index!=19){ //because index==19 is sad douna..
      fill(0,0,0);
      ellipse(75+x,77+y,6,11);
      ellipse(110+x,77+y,6,11);
    }
    //douna's eyebrow.
    if(index==15){ y=545;}
    if(index!=19){ //because index==18 is sad douna..
      noFill();
      arc(70+x, 50+y, 33, 40, PI-0.2, 5+0.2);  
      arc(117+x, 50+y, 33, 40, 2*PI-1.86-0.2, 2*PI+0.2);
    }
    y=610; //index 15 or 19's imitialization.
  }
  
  //douna tooth.
  if(index!=19){ //because index==18 is sad douna..
    fill(255,255,255);
    arc(95+x,128+y , 25,27, 0,PI);
    line(95+x, 128+y, 95+x, 139+y);
  }
  
  //douna nose.
  if(index==14 || index==16 ||index==17 ||index==18 ||index==20){ //index 15 is wonder, 19i s sad..
    fill(255,0,0);
    ellipse(95+x,110+y,35,35);
  }
  //douna front hair.
  fill(255,255,0);
  arc(95+x,4+y, 35,50, 0, PI, OPEN);
  arc(65+x,5+y, 25,30, 0, PI-0.27, OPEN);
  arc(125+x,5+y, 25,30, 0+0.27, PI, OPEN);
 
  //douna hands. 
  fill(255,235,200);
  ellipse(131+x,166+y,23,25); //right.
  ellipse(59+x,166+y,23,25);//left.
 
  if(index==15){//douna big eyes.
    fill(255,255,255); //white and big.
    ellipse(71+x,69+y,48,60);
    ellipse(119+x,69+y,48,60);
    noStroke();
    rect(75+x ,65+y,40,15);
    stroke(0);
    fill(0,0,0); //black and small eyes.
    ellipse(75+x,50+y,5,6);
    ellipse(115+x,50+y,5,6);
    fill(200,80,100);
    rect(68+x,105+y,55,60); //mouse.
    fill(255,255,255);//tooth.
    arc(95+x,106+y , 30,35, 0,PI);
    line(95+x, 106+y, 95+x, 123+y);
    fill(255,0,0);
    ellipse(95+x,90+y,35,35);//nose
  }
   if(index==16){ //black douna.
      fill(0,0,0); //hat.
      ellipse(94+x,165+y, 77,13);
      bezier(70+x,165+y, 55+x,204+y, 135+x,204+y, 120+x,165+y);
   }
   if(index==19){ //sad douna.
     fill(200,80,100);//mouse.
     noStroke();
     triangle(55+x,90+y,135+x,90+y,94+x,121+y);
     stroke(0);
     bezier(56+x,90+y, 52+x,38+y, 138+x,38+y,134+x,90+y);
     bezier(56+x,90+y, 56+x,95+y, 30+x,126+y,94+x,120+y);
     bezier(134+x,90+y, 134+x,95+y, 158+x,126+y,94+x,120+y);
     
     fill(255,255,255);//tooth.
     arc(95+x,56+y , 30,38, 0,PI);
     line(95+x, 56+y, 95+x, 75+y);
     fill(227,255,255);//eyedrop.
     bezier(68+x,44+y, 15+x,70+y, 20+x,140+y, 68+x,44+y);
     bezier(121+x,44+y, 174+x,70+y, 169+x,140+y, 121+x,44+y);
  
     line(53+x,40+y, 70+x,44+y);
     line(133+x,40+y, 116+x,44+y);
     fill(255,0,0);//nose
     ellipse(95+x,50+y,35,35);
     noFill();//eyebrow.
     arc(60+x, 18+y, 35, 30, 0, HALF_PI);  
     arc(127+x, 18+y, 35, 30, HALF_PI, PI);
     fill(#F0B3B3);//tounge.
     bezier(87+x,110+y ,77+x,75+y, 113+x,75+y, 103+x,110+y);
   }
    x=x+167;
  }//douna's for sentence end...
  
  //Decorations.
  
   x=502; 
   for( y=52; y<1000; cheek_index++ ){
    noStroke();
    fill(#FF86C9,140);
    ellipse(50+x,100+y, 50,30);
    ellipse(138+x,100+y, 50,30); 
 
   if(cheek_index==0) {y=y+250;}
   else {y=y+310;}
   }
    
  stroke(3);
  x=1000;
 for( y=52;y<1000; smile_index++){
   noFill();
   //eyebrows.
   arc(70+x,30+y,10,20,PI,2*PI);
   arc(120+x,30+y,10,20,PI,2*PI);
   
   //eyes.
   arc(70+x,70+y,20,40,PI,2*PI);
   arc(120+x,70+y,20,40,PI,2*PI);
   if(smile_index==0){y=y+250;}
   else {y=y+310;}
 }
 x=668;
 for( y=50;y<650; girlVersion_index++){ 
     fill(255,230,70);
     if(girlVersion_index==1){ fill(#FF98CF);}//ddochi. pink.
     if(girlVersion_index==2){ fill(#9BD8FF);}//douna. blue.
     ellipse(67+x,43+y,31,31);
     ellipse(121+x,43+y,31,31);
     fill(254,237,140);
     if(girlVersion_index==1){ fill(#FFD6EC);}
     if(girlVersion_index==2){ fill(#D6EFFF);}
     ellipse(40+x,43+y,32,32);
     ellipse(94+x,43+y,32,32);
     ellipse(149+x,43+y,32,32);
     
     if(girlVersion_index==0){//gongsil.eyebrow.
       line(50+x,61+y,57+x,72+y);
       line(130+x,72+y,137+x,61+y);
     }
     if(girlVersion_index==1){//ddochi.eyebrow.
       noFill();
       arc(65+x,63+y, 30,33, HALF_PI,PI+0.2);
       arc(120+x,63+y, 30,33, 0-0.2,HALF_PI); 
     }
     if(girlVersion_index!=2){
       fill(255,50,135);
       if(girlVersion_index==1){y=y+55; fill(#FF0004);} 
       bezier(95+x,143+y,50+x,155+y,85+x,115+y,94+x,143+y);
       bezier(95+x,143+y,140+x,155+y,103+x,115+y,94+x,143+y);     
     }
     if(girlVersion_index==2){y=y+31; fill(#93D5FF);}
     bezier(70+x,160+y,50+x,180+y,140+x,180+y,120+x,160+y);
     line(70+x,160+y,120+x,160+y);
     
    if(girlVersion_index==0){y=y+230;}
    else{y=y+247;}
 }
}
  


  
