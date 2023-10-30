//Global Variables
int appWidth, appHeight;
float faceX, faceY, faceD, faceR;
float backX, backY, backW, backH;
color Ygreen=#A0E520, white=#FFFFFF;
float EyeIX, EyeIY, EyeD; //Left
float EyeIIX, EyeIIY; //Right
float NoseXI, NoseYI, NoseXII, NoseYII, NoseXIII, NoseYIII; //Nose
float MLXI, MLYI, MLXII, MLYII; //Mouth
float MOpen, MReset;
//
void setup() {
 size(600, 400);
 appWidth = width;
 appHeight = height;
 //Ternary Operator
 int SDimension = (appWidth >= appHeight) ? appHeight : appWidth;
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
}
//END setup
//
void draw() {
  //DIVs
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
