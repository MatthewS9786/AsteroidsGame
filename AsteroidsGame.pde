Spaceship bob = new Spaceship();
Star[] sue = new Star[200];
ArrayList <Bullet> BulletList = new ArrayList <Bullet>();
ArrayList <Asteriod> AsteriodList = new ArrayList <Asteriod>();
public void setup() 
{
 size(700,700);
 background(0);
 for(int i=0; i<sue.length; i++){
 sue[i] = new Star();
 }
 for(int i = 0; i<15; i++){
 AsteriodList.add(new Asteriod()); 
}
}
public void keyPressed(){
 if(key == 'w'){
   bob.accelerate(.7);
 }
 if(key == 'a'){
   bob.turn(-15);
 }
 if(key == 'd'){
   bob.turn(15);
 }
 if(key == 'e'){
   bob.hyperspace();
 }
 if(key == ' '){
  BulletList.add(new Bullet(bob)); 
 }
}
public void draw() 
{
  background(0);
  stroke(0);
  for(int i=0; i<sue.length; i++){
  sue[i].show();
 }
  bob.show();
  bob.move();
  for(int i=0; i<AsteriodList.size(); i++){
    AsteriodList.get(i).show();
    AsteriodList.get(i).move();
    AsteriodList.get(i).turn(AsteriodList.get(i).myRotateSpeed);
  if(dist((float)bob.myCenterX, (float)bob.myCenterY, (float)AsteriodList.get(i).myCenterX, (float)AsteriodList.get(i).myCenterY) < 20){
    AsteriodList.remove(i);
    break;
   }
   for(int j=0; j<BulletList.size(); j++){
   if(dist((float)BulletList.get(j).myCenterX, (float)BulletList.get(j).myCenterY, (float)AsteriodList.get(i).myCenterX, (float)AsteriodList.get(i).myCenterY) < 14){
    BulletList.remove(j);
    AsteriodList.remove(i);
    break;
    }
   }
  }
  for(int i=0; i<BulletList.size(); i++){
   BulletList.get(i).show(); 
   BulletList.get(i).move(); 
  }
}
