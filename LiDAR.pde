float xmag, ymag = 0;
float newXmag, newYmag = 0;

Face f; 

ArrayList<Ray> rays;

void setup() {
  size(640, 480, P3D);
  background(0);
  Point a = new Point(-100,-100,0, color(255, 0, 0));
  Point b = new Point(100,-100,0, color(255, 255, 0));
  Point c = new Point(100,100,0, color(0, 255, 0));
  Point d = new Point(-100,100,0, color(0, 0, 255));

  f = new Face(a, b, c, d);
  rays = new ArrayList();
  
  int nn = 4;
  float n = float(nn);
  float s = PI / n;
  float m = 2 * PI;
  for(int x = -1 * nn; x <= n; x += 1) {
    for(int y = -1 * nn; y <= n; y += 1) {
      for(int z = -1 * nn; z <= n; z += 1) {
        if( !((abs(x) == n) || (abs(y) == n) || (abs(z) == n)) ) {
          continue;
        }
        float xx = x * s;
        float yy = y * s;
        float zz = z * s;
        
        Point pos = new Point(0, 0, -100);
        Point rot = new Point(x, y, z);
        rays.add(new Ray(pos, rot));
      }
    }
  }
}

void rotateScreen() {
  newXmag = mouseX/float(width) * TWO_PI;
  newYmag = mouseY/float(height) * TWO_PI;
  float diff = xmag-newXmag;
  if (abs(diff) >  0.01) { 
    xmag -= diff/4.0; 
  }
  
  diff = ymag-newYmag;
  if (abs(diff) >  0.01) { 
    ymag -= diff/4.0; 
  }
  
  rotateX(-ymag); 
  rotateY(-xmag); 
  
}

void draw() {
  background(0);
  translate(width/2, height/2, -30); 
  rotateScreen();

  f.render();
  for(Ray r : rays) {
    r.render();
  }
}