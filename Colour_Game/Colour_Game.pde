//variables
int mode;
int timer=0;

float coin= random(0, 1);

final int intro=0;
final int game =1;
final int gameover=2;
final int Pause=3;

boolean pkey;

int rng =int (random(0, 5));//the word one
int gnr = int(random(0, 5));//the color one
int points=0;
int hs=0;

color pink = #E84A5F;
color black = #000000;
color white = #FFFFFF;
color red = #DF151A;
color blue = #00CBE7;
color yellow = #F7DB15;
color purple = #CA29E0;

color[] colors = {pink, yellow, purple, red, blue};//random color
String[] colorWords = {"Pink", "Yellow", "Purple", "Red", "Blue"};//random words


// ArrayList <String> words= new ArrayList<String>();



void setup() {
  size(800, 600);
  mode=intro;
  //words.add("Red");
  //words.add("Blue");
  //words.add("Pink");

  //int choice = int(random(0, 6));
  //words.get(int(choice));
}
//end of setup

void draw() {
  if (mode==intro) {
    intro();
  }
  //end of intro
  else if (mode==game) {
    game();
  }
  //end of game
  else if (mode==gameover) {
    gameover();
  }
  //end of gameover
  else {
    println("Mode Error! Mode was " + mode);
  }//end of error
  //end of draw
}


void mouseReleased() {//Switching modes
  if (mode==intro) {

    mode=game;  
    introClicks();
  }
  //end of intro
  else if (mode==game) {
    //mode=gameover;
    gameClicks();
  }
  else if (mode==gameover){
    gameoverClicks();
  }
}
//end of gameover
