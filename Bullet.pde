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
}
