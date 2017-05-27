ArrayList<Point> points = new ArrayList();
Point point;
Point prev;
Point post;
float angle;
void setup(){
  size(500,500);
}

void draw(){
  background(0);  
  for(int i = 0; i < points.size(); i++){
   points.get(i).show();
   if (points.size() > 1){
     prev = points.get(points.size()-2);
     post =points.get(points.size()-1);
     angle = prev.getAngle(post);
     println(angle);
     post.projectPoint();
   }
  }
}

void mousePressed(){
  PVector pos = new PVector(mouseX,mouseY);
  point = new Point(pos);
  points.add(point);
}

//    points = new ArrayList();