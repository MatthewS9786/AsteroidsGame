class Bullet extends Floater
{
 Bullet(Spaceship bob){
   myCenterX=bob.myCenterX;
   myCenterY=bob.myCenterY;
   myPointDirection=bob.myPointDirection;
   myXspeed=bob.myXspeed;
   myYspeed=bob.myYspeed;
   accelerate(6.0);
 }
 void show(){
   fill(255,0,0);
   stroke(0);
   ellipse((float)myCenterX, (float)myCenterY,(float)6,(float)6);
 }
 public void move ()   
 {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
   
    if(myCenterX >width || myCenterX<0 || myCenterY >height || myCenterY < 0)
    {     
      myCenterX = -100;
      myCenterY= -100;
      myXspeed=0;
      myYspeed=0;      
    }    
 }
}
