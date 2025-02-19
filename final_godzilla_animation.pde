
int x;
int y;
int timerY;
int timerX;
int spin;
int timerX1;
int timerY1;

void setup() {
 x=250;
 y=125;
 timerX1=250;
 timerY1=125;
 
  size(800, 500);
  noStroke();
}

void draw() {
  background(79, 178, 191);

  
  fill(252, 107, 236);
  
  quad(x, y, x-100, y-50, x-110, y-30, x-50, y+200);
  quad(x-50, y+200, x-150, y, x-200, y+50, x-250, y+200);
  
  fill(68, 81, 82);

  quad(-200, 400, 100, 700, x+50, y+150, x, y);
  rect(x, y, 180, 100);
  
  fill(252, 107, 236);
  ellipse(x+60, y+50, 30, 15);
  
  
  if (spin>35) {
    spin=35;
    
    rect(x+70, y+115, 100000, 20);
    
  }
  fill(68, 81, 82);
  if (spin>0); {
    translate(x, y+100);
    rotate(radians(spin));
    rect(0, 0, 180, 50);
  }
  
  
  println(timerX, x);
  if (x==301) {
    timerX=timerX+1;
  }
  
  if (timerX>0 && timerX<50) {
    spin=spin+1;
    
  }
  
  if (timerX>70 && timerX<107) {
    spin=spin-1;
  }
  
  if (timerX==0) {
    spin=0;
  }
  
  if (timerX==120) {
    
    timerX=-1;
  }
  
  
 if (y==175) {
  timerY=timerY+1; 
 }

 if (timerY==120) {
  y=125; 
  timerY=0;
 }
 if (timerX1>=250 && timerX1<=300) {
   x=x+1;
 }
 
 if (timerX1>=420 && timerX1<=470) {
  x= x-1;
 }
 
 if (timerX1==470) {
  timerX1=250; 
 } else {
   timerX1=timerX1+1;
 }
 
 if (timerY1>=125 && timerY1<=175) {
  y=y+1; 
 }
 
 if (timerY1>=295 && timerY1<=345) {
   y=y-1;
 }
 
 if (timerY1==345) {
   timerY1=125;
 } else {
   timerY1=timerY1+1;
 }
}
