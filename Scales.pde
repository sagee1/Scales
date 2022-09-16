boolean shift = true;

void setup(){
  size(400,400);
  noLoop();
}

void draw(){
 
  for(int y = 400; y >= -40; y-=40){
   for (int x = -40; x <= 400; x+=40){
     if(shift==true)
       scl(x+50,y);
     else
       scl(x,y);
 }
 if(shift == true)
   shift = false;
   else
   shift = true;
}
}

void scl(int x, int y){
  int r = 206 + (int)(Math.random()*50);
  int g = 35 + (int)(Math.random()*50);
  int b = 55 + (int)(Math.random()*50);
  fill(r,g,b);
  ellipse(x,y,50,60);
  arc(x,y,50,100,0,PI);
  
  fill(255,255,255);
  ellipse(x,y+35,25,10);
  fill(0,0,0);
  ellipse(x,y+35,5,5);
}
