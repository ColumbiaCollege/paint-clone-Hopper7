//finish this paint program.
//if you press more green enough times it goes back to black
//if you press the less green button when the cursor is black it should go to green
//hint modulo command %
//further hint the modulo command in processing doesn't play nice with negatives

//make buttons for blue and red
//debounce the buttons
//hint make a mousePressed method

//Pat on the back for marking your up/down buttons in a nice way.

color cursorcolor = 0;
int green = 0;
int red = 0;
int blue = 0;
int step = 10;
int size = 10;
int sizeStep = 2;
boolean interval=true;
void setup() {
  size(600, 400);
  background(255);
}



void draw() {
  noStroke();
  textSize(30);
  textAlign(CENTER,CENTER);
  //more green button
  fill(0,255,0);
  rect(0,0,50,50);
  fill(0);
  text("+",25,25);
  if (mousePressed && mouseX<50 && mouseY<50){
    green = green + step;
  }
   if (green > 255){
     green = 255;
  } 
  //less green button
  fill(0,255,0);
  rect(50,0,50,50);
  fill(0);
  text("-",75,25);
  if (mousePressed && 50<mouseX && mouseX<100 && mouseY<50){
     green = green - step;
     if (green<0){
       green=0;
     }
  }
  //more red
  fill(255,0,0);
  rect(0,50,50,50);
  fill(0);
  text("+",25,75);
  if (mousePressed && mouseX<50 && mouseY>50 && mouseY<100){
    red = red + step;
  }
  if (red > 255){
    red =255; 
  }
  //less red
  fill(255,0,0);
  rect(50,50,50,50);
  fill(0);
  text("-",75,75);
  if (mousePressed && mouseX>50 && mouseX<100 && mouseY>50 && mouseY<100){
    red = red - step;
  }
  if (red < 0){
     red = 0; 
    }
  //more blue
  fill(0,0,255);
  rect(0,100,50,50);
  fill(0);
  text("+",25,125);
  if (mousePressed && mouseX<50 && mouseY>100 && mouseY<150){
    blue = blue + step;
  }
  if (blue > 255){
     blue = 255; 
    }
  //less blue
  fill(0,0,255);
  rect(50,100,50,50);
  fill(0);
  text("-",75,125);
  if (mousePressed && mouseX>50 && mouseX< 100 && mouseY>100 && mouseY<150){
    blue = blue - step;
  }
  if (blue < 0){
     blue = 0; 
    }
  //size more
  fill(0);
  rect(0,height*3/8,50,50);
  fill(255);
  ellipse(25,height*7/16,40,40);
  if(mousePressed && mouseX<50 && mouseY> height*3/8 && mouseY< height*1/2){
    size = size + sizeStep;
  }
  if(size>100){
   size = 100; 
  }
    //size less
    fill(0);
    rect(50,height*3/8,50,50);
    fill(255);
    ellipse(75,height*7/16,10,10);
   if(mousePressed && mouseX>50 && mouseX<100 && mouseY>height*3/8 && mouseY< height*1/2){
    size = size - sizeStep; 
    }
   if(size<5){
    size = 5; 
   }
  //eraser
  textSize(15);
  fill(0);
  rect(0,height*3/4,100,50);
  fill(255);
  text("Eraser",50,height*13/16);
  if(mousePressed && mouseX<100 && mouseY>height*3/4 && mouseY<height*7/8){
   blue = 255;
   green = 255;
   red = 255;
  }
  //reset
  fill(0);
  rect(0,height*7/8,50,50);
  fill(255);
  text("Reset",25,height*15/16);
  if (mousePressed && mouseX< 50 && mouseY>height*7/8){
    blue = 0;
    green = 0;
    red = 0;
  }
  //current collor
  fill(red,green,blue);
  rect(50,height*7/8,50,50);
  
 
  cursorcolor = color(red,green,blue); 
  
  //drawing part
  noStroke();
  if (mousePressed) {
    fill(cursorcolor);
    ellipse(mouseX, mouseY, size, size);
      println(green);
  }

}
