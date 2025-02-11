
int x;
int y;



void setup() {
 x=250;
 y=125;
  size(800, 500);
}

void draw() {
  background(79, 178, 191);
  fill(68, 81, 82);

  quad(-200, 400, 100, 700, x, y+175, x, y);
  rect(x, y, 180, 175);
  
  if (x>300) {
    x=x-3; 
  }
   
  
 if (x<250) {
  x=x + 2; 
 }
 
  
  if (y>175) {
    y=y-3;
 } 
  if (y<175) {
    y=y+2;
  }
    
}
