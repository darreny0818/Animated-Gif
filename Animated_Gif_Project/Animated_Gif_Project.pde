ArrayList<PImage> gif;
int x = 0;

void setup () {
  
  size(600, 600);
  gif = new ArrayList<PImage>(); //building the list
  
  int i = 0;
  
  while (i < 10) {
    String zero = "";
    if (i < 10) zero = "0";
    gif.add(loadImage("frame_" + zero + i + "_delay-0.06s.gif"));
    i++;
  } 
  frameRate(60);
   
}

void draw () {
  
  PImage frame = gif.get(x);
  image(frame, 0, 0, width, height);
  x++;
  if (x > 9) x = 0;
  
}
