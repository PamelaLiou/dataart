PShape warpup;
PShape weftup;
int scalefactor = 3;
int unit = scalefactor*2 ; //lenth of weave unit
int heightRes = 30; // columns
int widthRes = 30; //rows
int translateX = 100;
int translateY = 100;
  String s ="LUDDITE VS. TECHNOCRAT TAPESTRY";
int randInt;



void setup() {
  size(1000, 600, P3D);

  warpup = loadShape("warpup.obj");
  weftup = loadShape("weftup.obj");
  //translate(width/2, height/2);
  randInt= floor(random(1,10));

}

void draw() {

    background(#F0EEC7);

  fill(50);
  textSize(20);

  text(s, 50 , 100, 200, 100); 
  ortho(0, width, 0, height);
  pushMatrix();
  translate(width/2, height/2);

  lights();
  rotateX(-mouseY*0.001);
  // println(mouseX *0.001);
  rotateY(map(mouseX*0.001, 0, 0.86, -0.86, 0.86));
  scale(scalefactor);
  lights();

  //  for (int i= 0; i < 3; i++) {
  //    for (int j = 0; i < 3; j++) {
  //      if ((i % 2 == 0) && (j % 2 == 0)) {
  //        shape(warpup, i *unit, j*unit);
  //      } else if ((i % 2 == 0) && (j % 2== 1)){
  //        shape(weftup,i*unit, j* unit);
  //      }else if ((i % 2 == 1) && (j % 2==0)){
  //        shape(warpup,i*unit, j* unit);
  //      }else if ((i % 2 == 1) && (j % 2==1)){
  //        shape(weftup,i*unit, j* unit);
  //      }
  //    }
  //  }


  for (int j = 1; j <widthRes; j++) {

    if (j % 2 == 0) {
      for (int i = 1; i < heightRes; i++) {
        //randInt= floor(random(1,10));
        if (i % randInt==0) {
          shape(warpup, i*unit- translateX, j*unit- translateY);
        } else {
          shape(weftup, i*unit- translateX, j*unit- translateY);
        }
      }
    } else {      
      for (int i = 1; i < heightRes; i++) {
        if (i % (randInt+ 1) == 0) {
          shape(weftup, i*unit- translateX, j*unit- translateY);
        } else {
          shape(warpup, i*unit- translateX, j*unit- translateY);
        }
      }
    }
  }
  //Hard-coded mesh test
  //  shape(warpup, 0, 0);
  //  shape(weftup, 10, 0);
  //  shape(warpup, 20, 0);
  //  shape(weftup, 30, 0);
  //  shape(weftup, 0, 10);
  //  shape(warpup, 10, 10);
  //  shape(weftup, 20, 10);
  //  shape(warpup, 30, 10);
  //  shape(warpup, 0, 20);
  //  shape(weftup, 10, 20);
  //  shape(warpup, 20, 20);
  //  shape(weftup, 30, 20);
  //  
  //  rotateX(-mouseY*0.01);
  //
  //  rotateY(-mouseX*0.01);
  popMatrix();
}

