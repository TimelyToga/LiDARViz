import java.util.ArrayList;
import java.util.Arrays;

class Face implements Drawable{
  
 private ArrayList<Point> points;
 private Point position;
 private Point rotation; 
 
 public Face(Point a, Point b, Point c, Point d){
   this.points = new ArrayList();
   points.addAll(Arrays.asList(a, b, c, d));
   
   position = new Point(0,0,0);
   rotation = new Point(0,0,0);
 }
 
 public void translateFace(Point offset) {
   position = position.add(offset);
 }
 
 public void update(float delta) {
   
 }
 
 public void render() {
   pushMatrix(); 
   
   beginShape(QUAD);
   noFill();
   strokeWeight(2);
   translate(position.x, position.y, position.z); 
   rotateX(rotation.x);
   rotateY(rotation.y);
   rotateZ(rotation.z);
   
   for(Point p : points) {
     //fill(p.c); 
     stroke(p.c);
     vertex(p.x, p.y, p.z);
   }
   
   endShape();
   popMatrix();
 }
}