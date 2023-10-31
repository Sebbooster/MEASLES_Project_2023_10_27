//Global Variables
int appWidth, appHeight;
float faceX, faceY, faceD, faceR;
float backX, backY, backW, backH;
color Ygreen=#A0E520, white=#FFFFFF, red=#FF0303;
float EyeIX, EyeIY, EyeD; //Left
float EyeIIX, EyeIIY; //Right
float NoseXI, NoseYI, NoseXII, NoseYII, NoseXIII, NoseYIII; //Nose
float MLXI, MLYI, MLXII, MLYII; //Mouth
float MOpen, MReset;
float measleX, measleY, measleD;
int SDimension;
//
void setup() {
 size(600, 400);
 appWidth = width;
 appHeight = height;
 //Ternary Operator
 SDimension = (appWidth >= appHeight) ? appHeight : appWidth; //started as local variable
 //Population
 faceX = appWidth*1/2;
 faceY = appHeight*1/2;
 faceD = SDimension;
 faceR = SDimension*1/2;
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

}
//END setup
//
void draw() {
  //DIVs
  fill(red);
   measleX = random(0, faceD);
   measleY = random(0, faceD);
   measleD = random(SDimension*1/30, SDimension*1/10);
  ellipse(measleX, measleY, measleD, measleD);
  fill(white);
  rect(backX, backY, backW, backH);
  fill(Ygreen);
  ellipse(faceX, faceY, faceD, faceD);
  ellipse(EyeIX, EyeIY, EyeD, EyeD); //LeftEye
  ellipse(EyeIIX, EyeIIY, EyeD, EyeD); //RightEye
  triangle(NoseXI, NoseYI, NoseXII, NoseYII, NoseXIII, NoseYIII); //Nose
  strokeWeight(MOpen);
  line(MLXI, MLYI, MLXII, MLYII); //Mouth
  strokeWeight(MReset);
  color MeasleColor = color(255, random(0, 84), random(0, 100));
  fill(MeasleColor);
   measleX = random(faceD*2/4, faceD-1/4);
   measleY = random(faceY, faceY);
   measleD = random(faceD*1/30, faceD*1/10);
  noStroke();
  ellipse(measleX, measleY, measleD, measleD);
  stroke(1);
  fill(white);
  
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
