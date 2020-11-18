Spaceship bob = new Spaceship();
Star[] sue = new Star[220];
public void setup() 
{
 size(1000,1000);
 background(0);
 for(int i=0; i<sue.length; i++){
 sue[i] = new Star();
 }
}
public void keyPressed(){
 if(key == 'w'){
   bob.accelerate(1);
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
  
}

