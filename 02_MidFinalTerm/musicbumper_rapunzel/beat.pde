void beatDetect(){
  
  beat.detect(player.mix);
  float a = map(eRadius, 20, 80, 60, 255);
  fill(#FF00FF, a);
  noStroke();
  if ( beat.isOnset() ) eRadius = 90; //is Max ellipse Size.
  ellipse(width/2, height/2, eRadius, eRadius); //When beat is Offset.
  eRadius *= 0.95;
  if ( eRadius < 0 ) eRadius = 0;
  
  //return a;
  
  //fill(255);
  //textSize(35);
  //text("f(Beat)",350,150);
}
/*
class BeatListener implements AudioListener
{
  private BeatDetect beat;
  private AudioPlayer source;
  
  BeatListener(BeatDetect beat, AudioPlayer source)
  {
    this.source = source;
    this.source.addListener(this);
    this.beat = beat;
  }
  
  void samples(float[] samps)
  {
    beat.detect(source.mix);
  }
  
  void samples(float[] sampsL, float[] sampsR)
  {
    beat.detect(source.mix);
  }
}
*/