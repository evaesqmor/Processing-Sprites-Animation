PImage background;
PImage[] img = new PImage[8];
int xpos, pf;


//Las 3 primeras imagenes
void setup(){
  size(1024, 800);
  background = loadImage("images/background.png");
  for(int i = 0;i<8;i++){
    String imagepath = "images/guy"+(i+1)+".png";
    img [i] = loadImage(imagepath);
  }
  
}
 
void draw(){
  image(background,0,0,width,height);
  image(img[pf],xpos,height-500);
  //Número de fotogramas, se reinicia cuando ha pasado por todos
  if(++pf>7) pf=0;
  //Velocidad y avance
  if((xpos +=10)> width) xpos = -24;
  delay(40);
}
