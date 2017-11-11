int m=50;
int i=0;
int[] array=new int[m];

void setup() {
  size(700, 700);
  array = create_random_array(m, width/2);
}

void draw() {
  background(155);

  for (int i=0; i < m-1; i++) {
    if (array [i] > array [i+1]) {
      int temp = array [i];
      array[i] = array[i+1];
      array[i+1]= temp;
      line(60, 25+20*i, 90+5*array[i], 25+20*i);
    }
  }
  plot_array(array, m);
}

int[] create_random_array(int m, int max) {
  int[] x = new int[m];
  for (int i = 0; i < m; i++) {
    x[i] = int(random(max));
  }
  return x;
}

void plot_array(int[] x, int s) {
  for (int i = 0; i < s; i++) {
    rect(0, height / s * i, x[i], height / s);
  }
}

void mouseClicked() {
  array = create_random_array(m, width / 2);
}