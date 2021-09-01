Fire[] fire = new Fire[3];

class Fire{
  /*Field*/
  PImage img;
  int px;    //is position X
  int py;    //is position Y
  int alpha;

  //Add a Constructor , Assign values in the field.
  Fire(PImage im, int x, int y, int a) {
    img = im;
    px = x;
    py = y;
    alpha = a;
  }
  
  void display(){
    tint(255,alpha);
    image(img, px*3,py*1.9);
  }
  
}