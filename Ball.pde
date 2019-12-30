 public class Ball
{
  private int x;
  private int y;
  private int diameter;
  private int takeNextStepTowardsX;
  private int takeNextStepTowardsy;

  
  public Ball(int x, int y, int diameter,int takeNextStepTowardsX, int takeNextStepTowardsy)
  {
    this.x=x;
    this.y=y;
    this.diameter=diameter;
    this.takeNextStepTowardsX=takeNextStepTowardsX;
    this.takeNextStepTowardsy=takeNextStepTowardsy;
  }
  public void update(){
     move();
   checkCollisionWithWalls();
  }
  
  public void checkCollisionWithWalls(){
    if(isCollidingWithVerticleWalls())
    {
      setTakeNextStepTowardsy(getTakeNextStepTowardsy() * -1);
    }
    else if(isCollidingWithHorizontalWalls()){
      setTakeNextStepTowardsX(getTakeNextStepTowardsX() * -1);
    }
  }
  
  public boolean isCollidingWithVerticleWalls(){
    if(getY()+(getDiameter()/2) > height || getY()-getDiameter()/2 <0 )
    {
      return true;
    }
    return false;
  }
   public boolean isCollidingWithHorizontalWalls(){
    if(getX()+(getDiameter()/2) > height || getX()-(getDiameter()/2) <0 )
    {
      return true;
    }
    return false;
  }
  
  public void move()
  {
    y=y+takeNextStepTowardsy;
    x=x+takeNextStepTowardsX;
  }
  
  public void setTakeNextStepTowardsy(int takeNextStepTowardsy){
    this.takeNextStepTowardsy=takeNextStepTowardsy;
  }
  public void setTakeNextStepTowardsX(int takeNextStepTowardsX){
    this.takeNextStepTowardsX=takeNextStepTowardsX;
  }
  
  public int getTakeNextStepTowardsX()
  {return this.takeNextStepTowardsX;
  }
  
  public int getTakeNextStepTowardsy()
  {return this.takeNextStepTowardsy;
  }
  public int getX()
  {
    return this.x;
  }
   public int getY()
  {
    return this.y;
  }
  public int getDiameter()
  {
    return this.diameter;
  }
 
   public void display()
  {
    ellipse(x,y,diameter,diameter);
  }
}
