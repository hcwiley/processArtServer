ArrayList<String> shirts;
int timer = 2500;
int cur = -1;
void setup() {
  shirts = new ArrayList<String>();
  shirts.add("riverless.jpg");
  shirts.add("websites.jpg");
  shirts.add("cubist.jpg");
  shirts.add("finally.jpg");
  shirts.add("cav.jpg");
  size(1600, 1200);
  frameRate(25);
  image(loadImage(shirts.get(0)), 0, 0);
}
void draw() {
  if(false){
    image(loadImage("shirts-all.jpg"), 0, 0);
    return;
  }
  try {
    if(cur > shirts.size())
      cur = -1;
    image(loadImage(shirts.get(cur++)), 0, 0);
    Thread.sleep(timer);
  }
  catch(Exception e) {
  }
}

