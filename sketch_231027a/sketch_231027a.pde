//Global Variables
int appWidth, appHeight;
float faceX, faceY, faceD;
float backX, backY, backW, backH;
color Ygreen=#A0E520, white=#FFFFFF;
float EyeIX, EyeIY, EyeD; //Left
float EyeIIX, EyeIIY; //Right
float NoseXI, NoseYI, NoseXII, NoseYII, NoseXIII, NoseYIII; //Nose
float MLXI, MLYI, MLXII, MLYII; //Mouth
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
 //
 backX = faceX - faceD*1/2;
 backY = faceY - faceD*1/2;
 backW = faceD;
 backH = faceD;
 //
 EyeIX = ;
 EyeIY = ;
 EyeIIX = ;
 EyeIIY = ;
 EyeD = ;
 //
 NoseXI = ;
 NoseYI = ;
 NoseXII = ;
 NoseYII = ;
 NoseXIII = ;
 NoseYIII = ;
 //
 MLX = ;
 MLYI = ;
 MLXII = ;
 MLYII = ;
}
//END setup
//
void draw() {
  //DIVs
  fill(white);
  rect(backX, backY, backW, backH);
  fill(Ygreen);
  ellipse(faceX, faceY, faceD, faceD);
  ellipse(EyeIX, EyeIY, EyeD); //LeftEye
  ellipse(EyeIIX, EyeIIY, EyeD); //RightEye
  triangle(NoseXI, NoseYI, NoseXII, NoseYII, NoseXIII, NoseYIII); //Nose
  line(MLXI, MLYI, MLXII, MLYII); //Mouth
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
