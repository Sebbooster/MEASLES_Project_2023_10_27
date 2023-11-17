void measleProgram() {
//DIVs
  fill(white);
  //rect(backX, backY, backW, backH);
  fill(Ygreen);
  //ellipse(faceX, faceY, faceD, faceD);
  //
  color MeasleColor = color(255, random(0, 84), random(0, 100));
  fill(MeasleColor);
   measleX = random(backX+(measleD/2), (backX + backW) - (measleD/2));
   measleY = random(backY-(measleD/2), (backY + backH)+ (measleD/2));
   if (measleX <= ButtonIX+ButtonS+(measleD/2) && measleY <= ButtonIY+ButtonS+(measleD/2))  {
    measleX = random( ButtonIX+ButtonS+(measleD/2), (backX+backW)-(measleD/2) );
  }

   measleD = random(faceD*1/100, faceD*1/25);
  noStroke();
  if ( ((measleX-faceX)*(measleX-faceX))+((measleY-faceY)*(measleY-faceY)) < sq( ((faceD/2)-(measleD/2)) ) ) { //Measle on Circle
    if ( measlesON==true ) ellipse( measleX, measleY, measleD, measleD );
  }
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
 if ( mouseX>ButtonIX && mouseX<ButtonIX+ButtonS && mouseY>ButtonIY && mouseY<ButtonIY+ButtonS ) { //Buton 1
    HOC = Bgreen;
    fill( HOC );
    rect( ButtonIX, ButtonIY, ButtonS, ButtonS );
    fill( white );
  } else if ( mouseX>ButtonIIX && mouseX<ButtonIIX+ButtonS && mouseY>ButtonIIY && mouseY<ButtonIIY+ButtonS ) { //Button 2
    HOC = yellow;
    fill( HOC );
    rect( ButtonIIX, ButtonIIY, ButtonS, ButtonS );
  } else if (  mouseX>ButtonIIIX && mouseX<ButtonIIIX+ButtonS && mouseY>ButtonIIIY && mouseY<ButtonIIIY+ButtonS ) { //button 3
    HOC = orange;
    fill( HOC );
    rect( ButtonIIIX, ButtonIIIY, ButtonS, ButtonS );
  } else { //No Buttons
    HOC = white;
    fill( HOC );
    rect( ButtonIX, ButtonIY, ButtonS, ButtonS );
    rect( ButtonIIX, ButtonIIY, ButtonS, ButtonS );
    rect( ButtonIIIX, ButtonIIIY, ButtonS, ButtonS );
  }
  //
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
  
} //END MeasleProgram
