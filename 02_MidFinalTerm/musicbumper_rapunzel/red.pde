void red(){
  
   for(int i = 0; i < player.bufferSize() - 1; i++) {
     float left1 = 50 + player.left.get(i) * 50;
     float left2 = 50 + player.left.get(i+1) * 50;
     float right1 = 60 + player.right.get(i) * 50;
     float right2 = 60 + player.right.get(i+1) * 50;
     line(i, left1, i+1, left2);
     line(i, right1, i+1, right2);
   }
   
}
  