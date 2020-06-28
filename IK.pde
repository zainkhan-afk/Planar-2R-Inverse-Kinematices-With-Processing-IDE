float xOff = 0;
float yOff = 10000;

void setup(){
  size(700, 700);
}

void draw(){
  background(0);
  float a1 = 200;
  float a2 = 200;
  float x = map(noise(xOff), 0, 1, -width/2, width/2);
  float y = map(noise(yOff), 0, 1, -height/2, height/2);
  
  float q2 = acos((x*x + y*y -(a1*a1)-(a2*a2))/(2*a1*a2));
  float q1 = atan2(y,x) - atan2((a2*sin(q2)),(a1+a2*cos(q2)));
  
  stroke(255);
  pushMatrix();
  translate(width/2, height/2);
  ellipse(x, y, 50, 50);
  rotate(q1);
  line(0, 0, a1, 0);
  
  translate(a1, 0);
  rotate(q2);
  line(0, 0, a2, 0);
  popMatrix();
  print(x);
  print(", ");
  println(y);
  xOff += 0.005;
  yOff += 0.005;
}
