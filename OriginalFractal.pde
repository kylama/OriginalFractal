float cnlX = 0;
float cnlY = 0;
float rX = 500;
float rY = 0;
float tX = 0;
float tY = 500;
float moveSize = 500;
float speed = 2;

public void setup(){
  size(500,500);
  strokeWeight(2);
}

public void draw(){
  background(235);
  ceiling(cnlX,cnlY,moveSize);
  leftWall(cnlX,cnlY,moveSize);
  rightWall(rX,rY,moveSize);
  tile1(tX,tY,moveSize);
  tile2(tX,tY,moveSize);
  tile3(tX,tY,moveSize);
  tile4(tX,tY,moveSize);
  
  if(cnlX >= -250){
    cnlX -= speed;
    cnlY -= speed;
    rX += speed;
    rY -= speed;
    tX -= speed;
    tY += speed;
    moveSize += 2*speed;
  }
  else{
    cnlX = 0;
    cnlY = 0;
    rX = 500;
    rY = 0;
    tX = 0;
    tY = 500;
    moveSize = 500;
  }
}

public void ceiling(float x, float y, float size){
  strokeWeight(size/250);
  fill(#F0CE8A);
  quad(x, y, x+size, y, x+3*size/4, y+size/4, x+size/4, y+size/4);
  fill(235);
  ellipse(x+size/2, y+14*size/128, size/11, size/20);
  fill(#F5D363);
  ellipse(x+size/2, y+size/8, size/12, size/20);
  if(size > 20)
    ceiling(x+size/4, y+size/4, size/2);
}

public void leftWall(float x, float y, float size){
  strokeWeight(size/250);
  fill(#C986B0);
  quad(x, y, x, y+size, x+size/4, y+3*size/4, x+size/4, y+size/4);
  strokeWeight(size/100);
  fill(200);
  quad(x+size/16, y+size/8, x+size/8, y+3*size/16, x+size/8, y+size/2, x+size/16, y+size/2);
  fill(#FCB352);
  quad(x+5*size/32, y+size/3, x+7*size/32, y+9*size/24, x+7*size/32, y+19*size/32, x+5*size/32, y+5*size/8);
  if(size > 20)
    leftWall(x+size/4, y+size/4, size/2);
}

public void rightWall(float x, float y, float size){
  strokeWeight(size/250);
  fill(#C986B0);
  quad(x, y, x, y+size, x-size/4, y+3*size/4, x-size/4, y+size/4);
  strokeWeight(size/20);
  fill(#23CBA3);
  quad(x+9*size/7, y-size/3, x+9*size/7, y+7*size/8, x+10*size/16, y+8.5*size/12, x+10*size/16, y+size/60);
  if(size > 20)
    rightWall(x-size/4, y+size/4, size/2);
}

public void tile1(float x, float y, float size){
  strokeWeight(size/250);
  fill(0);
//quad(x, y, x+size/4,      y, x+9*size/32,   y-size/16, x+size/16,     y-size/16);
  quad(x, y, x+31*size/128, y, x+37*size/128, y-size/12, x+23*size/256, y-size/12);
  if(size > 20)
    tile1(x+size/7, y-size/7, 183*size/256);
}
public void tile2(float x, float y, float size){
  strokeWeight(size/250);
  fill(0);
  quad(x+37*size/128, y-size/12, x+size/2, y-size/12, x+size/2, y-size/7, x+81*size/256, y-size/7);
  if(size > 20)
    tile2(x+size/7, y-size/7, 183*size/256);
}
public void tile3(float x, float y, float size){
  strokeWeight(size/250);
  fill(0);
  quad(x+size/2, y, x+95*size/128, y, x+45*size/64, y-size/12, x+size/2, y-size/12);
  if(size > 20)
    tile3(x+size/7, y-size/7, 183*size/256);
}
public void tile4(float x, float y, float size){
  strokeWeight(size/250);
  fill(0);
  quad(x+45*size/64, y-size/12, x+117*size/128, y-size/12, x+55*size/64, y-size/7, x+43*size/64, y-size/7);
  if(size > 20)
    tile4(x+size/7, y-size/7, 183*size/256);
}
