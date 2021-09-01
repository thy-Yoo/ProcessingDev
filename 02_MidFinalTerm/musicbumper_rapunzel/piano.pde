
void piano()
{

  //************************************PIANO 1*********************************
  fill(255);
  stroke(0);
  for (int i=0; i<8; i++) {
    rect(0+i*15, 0, 15, 50);
  }
  fill(#FF0000);
  noStroke();
  ellipse(0, 0, 2, 2);
  //*************************************PIANO 2**********************************
  if(mousePressed == false){
    pushMatrix();
    translate(0, 200);
    fill(255);
    stroke(0);
    quad(0, 15, 15, 15, 0, 35, -15, 35);//bottom
    rect(-15, 20, 15, 15);//front
    quad(0, 20, 15, 0, 15, 15, 0, 35);//left
    quad(0, 0, 15, 0, 0, 20, -15, 20);//top
    popMatrix();
  }
  else if(mousePressed == true){
      pushMatrix();
      translate(0, 200);
      fill(255);
      stroke(0);
      strokeWeight(1);
      quad(0, 15, 15, 15, 0, 35, -15, 35);//bottom
      rect(-15, 30, 15, 5);//front
      quad(0, 30, 15, 10, 15, 15, 0, 35);//left
      
      quad(0, 10, 15, 10, 0, 30, -15, 30);//top
      popMatrix();
  }

  text("mX:"+mouseX+", mY:"+mouseY, 0, 0);

  if (mousePressed == true) {
    if (mouseX>400 && mouseX<415) {
      out.playNote( 0.0, 0.3, "C5 ");
    }
    if (mouseX>415 && mouseX<430) {
      out.playNote( 0.0, 0.3, "D5 ");
    }
    if (mouseX>430 && mouseX<445) {
      out.playNote( 0.0, 0.3, "E5 ");
    }
    if (mouseX>445 && mouseX<460) {
      out.playNote( 0.0, 0.3, "F5 ");
    }
    if (mouseX>460 && mouseX<475) {
      out.playNote( 0.0, 0.3, "G5 ");
    }
    if (mouseX>475 && mouseX<490) {
      out.playNote( 0.0, 0.3, "A5 ");
    }
    if (mouseX>490 && mouseX<505) {
      out.playNote( 0.0, 0.3, "B5 ");
    }
    if (mouseX>505 && mouseX<520) {
      out.playNote( 0.0, 0.3, "C6 ");
    }

    
  }
}