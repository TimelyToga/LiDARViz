class Point {
  public float x, y, z;
  public color c;
  
  public Point(float x, float y, float z, color c) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.c = c;
  }
  
  public Point(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.c = color(255);
  }
  
  public Point add(Point b) {
   return new Point(this.x + b.x, this.y + b.y, this.z + b.z, this.c); 
  }
  public Point mult(Point b) {
   return new Point(this.x * b.x, this.y * b.y, this.z * b.z, this.c); 
  }
  public Point mult(float c) {
   return new Point(this.x * c, this.y * c, this.z * c, this.c); 
  }
}