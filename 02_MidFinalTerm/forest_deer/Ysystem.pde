public float vib;

public void Ysystem(float sx, float sy, float ex, float ey, float angle, int level, float wi){
  int new_level = level - 1;
  
  noStroke();
  //fill(0,220);
  quad(sx-wi,sy, sx+wi,sy, ex+wi*0.6,ey, ex-wi*0.6, ey);
 
  if(level>0){
    float dist = sqrt( (sx-ex)*(sx-ex) + (sy-ey)*(sy-ey) );
    float dx = (ex-sx)/dist;
    float dy = (ey-sy)/dist;
    float R = radians(angle);
    float new_dist = 0.9*dist*cos(R);
    float new_cx = ex+dx*new_dist;
    float new_cy = ey+dy*new_dist;
    float final_dist = 0.9*dist*sin(R);
    
    float dx1 = -dy;
    float dy1 = dx;
    float dx2 = dy;
    float dy2 = -dx;
    float new_ex1 = new_cx+dx1*final_dist;
    float new_ey1 = new_cy+dy1*final_dist;
    float new_ex2 = new_cx+dx2*final_dist;
    float new_ey2 = new_cy+dy2*final_dist;
    
    wi = wi*0.549;
    
    if(level>4){ angle = angle * random(1-vib,1+vib);}
    Ysystem(ex,ey, new_ex1, new_ey1, angle, new_level,wi);    
    Ysystem(ex,ey, new_ex2, new_ey2, angle, new_level,wi);
  }
  
}



    