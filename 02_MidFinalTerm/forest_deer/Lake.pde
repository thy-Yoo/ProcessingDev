void lake(){

  pushMatrix();
  translate(-530,-550);
    beginShape();
    //stroke(0);
    vertex(60, 620); //ver
    bezierVertex(60, 590, 30, 570, 70, 520);//a,a,ver
    bezierVertex(75, 510, 160, 450, 190, 450); //a,a,ver
    bezierVertex(250, 440, 320, 415, 350, 415);//a,a,ver
    bezierVertex(360, 415, 400, 415, 570, 415);//a,a,ver
    bezierVertex(660, 415, 770, 415, 770, 415);//a,a,ver
    bezierVertex(770, 415, 850, 415, 920, 470);//a,a,ver
    bezierVertex(935, 480, 986, 510, 996, 515);//a,a,ver
    bezierVertex(1000, 520, 1050, 515, 1024, 700);//a,a,ver
    bezierVertex(1000, 700, 500, 700, 500,700);//a,a,ver
    //bezierVertex(100, 700, 150, 700, 60,700);//a,a,ver
    endShape(CLOSE);
   popMatrix();
}
