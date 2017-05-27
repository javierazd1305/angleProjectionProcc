class Point{
  public PVector pos;
  public float angle;
  public PVector projection;
  Point (PVector pos){
    this.pos = pos;
  }
  
  public void show(){
    stroke(255);
    noFill();
    ellipse(this.pos.x,this.pos.y,10,10);
  }
  
   public float getAngle(Point target) {
    float angle = (float) Math.toDegrees(Math.atan2(this.pos.y-target.pos.y,this.pos.x- target.pos.x ));
    angle = angle - 180;
    angle = abs(angle);
    this.angle = angle;
    target.angle = angle;
    return angle;
  }
  public void projectPoint(){
    float x = this.pos.x + cos(this.angle*PI/180)*(20) ;
    float y = this.pos.y -sin(this.angle*PI/180)*(20);
    PVector projectedPoint = new PVector(x,y);
    this.projection = projectedPoint;
    fill(255,0,255);
    ellipse(this.projection.x,this.projection.y,10,10);
   }
}