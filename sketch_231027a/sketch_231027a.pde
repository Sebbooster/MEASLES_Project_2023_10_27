//Global Variables
int appWidth, appHeight;
int size, sizeFont;
float faceX, faceY, faceD, faceR;
float backX, backY, backW, backH;
color Ygreen=#A0E520, white=#FFFFFF, red=#FF0303, Bgreen=#00FF00, orange=#FF810A, yellow=#FFEB0A;
float EyeIX, EyeIY, EyeD; //Left
float EyeIIX, EyeIIY; //Right
float NoseXI, NoseYI, NoseXII, NoseYII, NoseXIII, NoseYIII; //Nose
float MLXI, MLYI, MLXII, MLYII; //Mouth
float MOpen, MReset;
float measleX, measleY, measleD;
int SDimension;
float ButtonIX, ButtonIY, ButtonIIX, ButtonIIY, ButtonIIIX, ButtonIIIY, ButtonS;
String start="Start", stop="STOP", quit="X";
PFont base;
//
void setup() {
  //fonts
  base = createFont("Arial", 55);
  //
 size(600, 400);
 appWidth = width;
 appHeight = height;
 //Ternary Operator
 SDimension = (appWidth >= appHeight) ? appHeight : appWidth; //started as local variable
 //Population
 faceX = appWidth*1/2;
 faceY = appHeight*1/2;
 faceD = SDimension;
 faceR = faceD*1/2;
 //
 backX = faceX - faceD*1/2;
 backY = faceY - faceD*1/2;
 backW = faceD;
 backH = faceD;
 //
 EyeIX = appWidth*2/5;
 EyeIY = appHeight*2/5;
 EyeIIX = appWidth*3/5;
 EyeIIY = appHeight*2/5;
 EyeD = faceD*2/12;
 //
 NoseXI = faceX;
 NoseYI = EyeIIY;
 NoseXII = EyeIX;
 NoseYII = faceY;
 NoseXIII = EyeIIX;
 NoseYIII = faceY;
 //
 MLXI = NoseXII;
 MLYI = backY+SDimension*5/8;
 MLXII = NoseXIII;
 MLYII = MLYI;
 //
 MOpen = SDimension*1/10;
 MReset = SDimension/SDimension;
 //
 ButtonIX = backX;
 ButtonIY = backY;
 ButtonS = SDimension/2-sqrt(sq(SDimension/2)/2);
 //
 ButtonIIX = backX + faceD - ButtonS;
 ButtonIIY = ButtonIY;
 //
 ButtonIIIX = ButtonIIX;
 ButtonIIIY = backY + faceD - ButtonS;
 //
 rect(backX, backY, backW, backH);
 ellipse(faceX, faceY, faceD, faceD);
rect(ButtonIX, ButtonIY, ButtonS, ButtonS);
rect(ButtonIIX, ButtonIIY, ButtonS, ButtonS);
rect(ButtonIIIX, ButtonIIIY, ButtonS, ButtonS);
}
//END setup
//
void draw() {
  //DIVs
  fill(white);
  //rect(backX, backY, backW, backH);
  fill(Ygreen);
  //ellipse(faceX, faceY, faceD, faceD);
  //
  color MeasleColor = color(255, random(0, 84), random(0, 100));
  fill(MeasleColor);
   measleX = random(backX+(measleD/2), (backX + backW) - (measleD/2));
   //while ( measleX < ButtonIX+ButtonS ) measleX = random( backX+(measleD/2), (backX+backW)-(measleD/2) );
   measleY = random(backY-(measleD/2), (backY + backH)+ (measleD/2));
  //while ( measleY < ButtonIY+ButtonS ) measleY = random( backY+(measleD/2), (backY+backH)-(measleD/2) );
   if (measleX <= ButtonIX+ButtonS+(measleD/2) && measleY <= ButtonIY+ButtonS+(measleD/2))  {
    println("\t\tXhere", measleX, ButtonIX+ButtonS);
    measleX = random( ButtonIX+ButtonS+(measleD/2), (backX+backW)-(measleD/2) );
  }

   measleD = random(faceD*1/100, faceD*1/25);
  noStroke();
  ellipse(measleX, measleY, measleD, measleD);
  stroke(1);
  fill(white);
  //
  ellipse(EyeIX, EyeIY, EyeD, EyeD); //LeftEye
  ellipse(EyeIIX, EyeIIY, EyeD, EyeD); //RightEye
  triangle(NoseXI, NoseYI, NoseXII, NoseYII, NoseXIII, NoseYIII); //Nose
  strokeWeight(MOpen);
  line(MLXI, MLYI, MLXII, MLYII); //Mouth
  strokeWeight(MReset);
  //
  //Text
  color hoverOverColor=white;
  if (mouseX<ButtonIX && mouseX<ButtonIX + ButtonS && mouseY>ButtonIY && mouseY<ButtonIY + ButtonS) { //button 1
  hoverOverColor = Bgreen;
  } else if (mouseX<ButtonIIX && mouseX<ButtonIIX + ButtonS && mouseY>ButtonIIY && mouseY<ButtonIIY + ButtonS) {//button 2
  hoverOverColor = orange;
  } else if (mouseX<ButtonIIIX && mouseX<ButtonIIIX + ButtonS && mouseY>ButtonIIIY && mouseY<ButtonIIIY + ButtonS) {//button 3
  hoverOverColor = yellow;
  } else { //no buttons
  fill(white);
  }
  rect(ButtonIX, ButtonIY, ButtonS, ButtonS);
  rect(ButtonIIX, ButtonIIY, ButtonS, ButtonS);
  rect(ButtonIIIX, ButtonIIIY, ButtonS, ButtonS);
  fill(white);
  
  fill(Ygreen); //ink
  noFill();
  textAlign(CENTER, CENTER);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 20;
  textFont(base, size);
  text(start, ButtonIX, ButtonIY, ButtonS, ButtonS);
  //
  fill(red); //ink
  noFill();
  textAlign(CENTER, CENTER);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 20;
  textFont(base, size);
  text(stop, ButtonIIX, ButtonIIY, ButtonS, ButtonS);
  //
  fill(red); //ink
  noFill();
  textAlign(CENTER, CENTER);
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 20;
  textFont(base, size);
  text(quit, ButtonIIIX, ButtonIIIY, ButtonS, ButtonS);
  
}
//END draw
//
void keyPressed() {

}
//END keyPressed
//
void mousePressed() {

}
//END mousePressed
//
//END MAIN program
