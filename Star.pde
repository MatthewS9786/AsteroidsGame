class Star
{
  private int myX, myY, myColor;
  public Star(){
  myColor = color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
  myX=(int)(Math.random()*700);
  myY=(int)(Math.random()*700);
  }
  public void show(){
   fill(myColor);
   ellipse((float)(myX),(float)(myY),5,5); 
  }
}
