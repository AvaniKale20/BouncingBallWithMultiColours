Ball ballOne=new Ball(300,200,50,5,5);
Ball ball =new Ball(400,100,35,3,3);
Ball ballTwo=new Ball(150,250,20,4,3);
Ball[] balls=new Ball[100];
void setup(){
  size(800,700);

  for(int i=0;i<balls.length;i++){
 
    balls[i] = new Ball(int(random(400,350)),int(random(400,350)),int(random(30,55)),int(random(5)),int(random(5)));
  }
}
void draw(){
  background(0);
for(int i=0;i<balls.length;i++){
  fill(random(255),random(255),random(255));
  balls[i].display();
  balls[i].update();
} 
}
