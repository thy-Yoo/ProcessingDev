void heart(){
  pushMatrix();
  translate(0,-10);
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -40, 70, -40, 70, 0);
  bezierVertex(70, 70, 0, 80, 0, 90);
  bezierVertex(0, 80, -70, 70, -70, 0);
  bezierVertex(-70, -40, -10, -40, 0, 0);
  endShape();
  popMatrix();
  
  //fill(0);
  //ellipse(0,-2,0,0);

}