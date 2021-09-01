Cloud[] cloud = new Cloud[3];

class Cloud{
  /*Field*/
  PImage img;
  int px;    //is position X
  int py;    //is position Y

  //Add a Constructor , Assign values in the field.
  Cloud(PImage im, int x, int y) {
    img = im;
    px = x;
    py = y;
  }
  
  void display(){
    tint(255,200);
    image(img, px*3,py*1.9);
  }
  void moving(){
    if(px<canvasW){
      px--;
    }
  }
}