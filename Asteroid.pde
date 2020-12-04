class Asteriod extends Floater
{
  public double myRotateSpeed;
  Asteriod(){
      myRotateSpeed = (Math.random()*4)-2;
      corners=6;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0]=-11;
      yCorners[0]=-8;
      xCorners[1]=7;
      yCorners[1]=-8;
      xCorners[2]=13;
      yCorners[2]=0;
      xCorners[3]=6;
      yCorners[3]=10;
      xCorners[4]=-11;
      yCorners[4]=8;
      xCorners[5]=-5;
      yCorners[5]=0;
      myColor=100;
      myCenterX=350;
      myCenterY=350;
      while(myCenterX > 320 && myCenterX < 380 && myCenterY > 320 && myCenterY < 380){
       myCenterX = (int)(Math.random()*600)+50; 
       myCenterY = (int)(Math.random()*600)+50;
      }
      myXspeed=(Math.random()*2)-1; 
      myYspeed=(Math.random()*2)-1;
      myPointDirection=(Math.random()*361);
  }
  void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;      
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
    
  }
}
