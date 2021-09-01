

void lines(){
for( int i = 0; i < player.bufferSize() - 1; i++ )
  {
    // find the x position of each buffer value
    float x1  =  map( i, 0, player.bufferSize(), 0, width/4 );
    float x2  =  map( i+1, 0, player.bufferSize(), 0, width/4 );
    // draw a line from one buffer position to the next for both channels
    stroke(#0000FF);
    line( x1, 50 + player.left.get(i)*50, x2-10, 50 + player.left.get(i+1)*50);
  }  
  fill(255);
  text("lines",0,50);
  
}