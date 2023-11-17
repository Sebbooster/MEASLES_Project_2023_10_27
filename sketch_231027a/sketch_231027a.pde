//Global Variables
int appWidth, appHeight;
int size, sizeFont;
int SDimension;
//
color Ygreen=#A0E520, white=#FFFFFF, red=#FF0303, Bgreen=#00FF00, orange=#FF810A, yellow=#FFEB0A;
color HOC=white;
//
float faceX, faceY, faceD, faceR;
float backX, backY, backW, backH;
float EyeIX, EyeIY, EyeD; //Left
float EyeIIX, EyeIIY; //Right
float NoseXI, NoseYI, NoseXII, NoseYII, NoseXIII, NoseYIII; //Nose
float MLXI, MLYI, MLXII, MLYII; //Mouth
float MOpen, MReset;
float measleX, measleY, measleD;
float ButtonIX, ButtonIY, ButtonIIX, ButtonIIY, ButtonIIIX, ButtonIIIY, ButtonS;
//
String start="Start", stop="STOP", quit="X";
//
PFont base;
//
Boolean measlesON=false, splashScreen=false;
//
void setup() {
  //fonts
  base = createFont("Arial", 55);
  //
 //fullScreen();
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
 if (splashScreen==false) background(0);
 if (splashScreen==true) measleProgram();
}
//END draw
//
void keyPressed() {
if(key==' ') measlesON=true; // START
if(keyCode==BACKSPACE) measlesON=false; //STOP
if(keyCode==ESC) exit(); //QUIT
}
//END keyPressed
//
void mousePressed() {

splashScreen=true;
//
if(mouseX>ButtonIX && mouseX<ButtonIX+ButtonS && mouseY>ButtonIY && mouseY<ButtonIY+ButtonS) measlesON=true; //START
if(mouseX>ButtonIIX && mouseX<ButtonIIX+ButtonS && mouseY>ButtonIIY && mouseY<ButtonIIY+ButtonS) measlesON=false; //STOP
if(mouseX>ButtonIIIX && mouseX<ButtonIIIX+ButtonS && mouseY>ButtonIIIY && mouseY<ButtonIIIY+ButtonS) exit(); //QUIT

}
//END mousePressed
//
//END MAIN program
