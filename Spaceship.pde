class Spaceship extends Floater  
{   
    public Spaceship(){
      corners=3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0]=-6;
      yCorners[0]=-6;
      xCorners[1]=12;
      yCorners[1]=0;
      xCorners[2]=-6;
      yCorners[2]=6;
      myColor=255;
      myCenterX=350;
      myCenterY=350;
      myXspeed=0;
      myYspeed=0;
      myPointDirection=0;
    }
 public void hyperspace(){
 myCenterX = (int)(Math.random()*685)+5;
 myCenterY = (int)(Math.random()*685)+5;
 myXspeed=0;
 myYspeed=0;
 }
}
