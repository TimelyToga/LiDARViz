class Ray implements Drawable {
 Point position;
 Point direction;
 
 float DEFAULT_LENGTH = 25 ;
 
 public Ray(Point position, Point direction) {
   this.position = position;
   this.direction = direction; 
 }
 
 public void update(float delta){}
 
 public void render(){ 
   Point start = position; 
   Point end = direction.mult(DEFAULT_LENGTH).add(start);
   
   // Start 
   strokeWeight(4);
   stroke(255, 0, 0);
   point(start.x, start.y, start.z);
   
   // end 
   strokeWeight(4);
   stroke(0, 255, 0);
   point(end.x, end.y, end.z);
   
   // Line 
   strokeWeight(2);
   beginShape(LINES);
   stroke(255, 0, 0); vertex(start.x, start.y, start.z);
   stroke(0, 255, 0); vertex(end.x, end.y, end.z);
   endShape();
 }
}