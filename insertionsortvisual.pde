
int[] heights = new int[100];
//index for sort
int i = 0;
//second index
int j;
void setup() {
 size(500, 300);
 frameRate(4);
 background(200);
 //set y to be equal to 0 at bottom
 translate(0, height);
 
 //populate heights
 for (int i = 0; i < heights.length; i++) {
   heights[i] = (int)random(1, 101);;
 }

 displayRects(); 
}

void draw() {
  int key = heights[i];
  j = i - 1;
  
  //negative iteration, that finds correct index for key
  while (j >= 0 && heights[j] > key) {
    heights[j+1] = heights[j];
    j = j - 1;
  }
  heights[j+1] = key;
  displayRects();
  i++;
  //if done? stop draw
  if ( i == heights.length ) {
    noLoop();
  }
}

void displayRects() {
  clear();
  background(200);
  //set y to be equal to 0 at bottom
  translate(0, height);
  fill(255);
  int rectWidth = width / heights.length;
  //create rect for each height in heights
  for (int i = 0; i < heights.length; i++) {
    rect(rectWidth * i , 0, rectWidth, - heights[i] * 2);
  } 
}
