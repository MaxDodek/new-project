//Max Dodek, 2.3
//March 28, 2022
// New Project

//Music/Sounds
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Mode variablesframe work
int mode; // This is similar way to how real video games that are more complex are made
final int INTRO =0; // final makes it so that these can't change anymore
final int GAME = 1;
final int PAUSE =2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//Game Variables
float x, y,d;
float vx, vy; //target velocity
int score, lives;



// Colour Variables
//used https://www.colourlovers.com/palette/462628/Blazin_Jell-O_Rainbo for colours
color red = #DF151A;
color orange = #FD8603;
color yellow = #F4F328;
color green = #00DA3C;
color lightblue = #00CBE7;
//https://www.colourlovers.com/colors/search/new
color darkblue = #0C4EBF;
color purple = #6A1CC0;
color blue = #0000FF; //https://htmlcolorcodes.com/colors/shades-of-blue/
color white = #FFFFFF;
color black = #000000;
color grey = #4D4D4D;

//sound variables
Minim minim;
AudioPlayer theme, main, coin, bump, gameover;

void setup() {
  size (800, 800);
  textAlign(CENTER);
  rectMode(CENTER);// makes it so what ever I put in will be centered

  mode = INTRO;

  //game variables initialization
  x=width/2;
  y=height/2;
  d = 100;
  vx=random(-5, 5);
  vy=random(-5, 5);
  score=0;
  lives=4;

  //minim
  minim = new Minim(this);// this is piece of code connecting our sketch to minim. loading sound efects
  theme= minim.loadFile("Theme-batman.mp3");//from https://mixkit.co/free-stock-music/discover/theme-arcade/ , using elements.envato.com
  main= minim.loadFile("mainsong-something-in-the way.mp3");//from https://mixkit.co/free-stock-music/discover/theme-arcade/ , using elements.envato.com
  coin= minim.loadFile("gameover.wav");//from https://www.lordbyng.net/compsci/bprog.html
  bump= minim.loadFile("bump.wav");//from https://www.lordbyng.net/compsci/bprog.html
  gameover= minim.loadFile("coin.wav");//Downloaded from youtube with mp3 converter: youtube video link -https://www.youtube.com/watch?v=4VxdufqB9zg
}

void draw () { // After draw, I can do void intro, void game, etc. instead of using tabs
  if (mode==INTRO) {
    intro();
  } else if (mode ==GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  }  else if (mode == OPTIONS) {
    options();
  }
}

    
 //} else {
 //   println("Mode Error: Mode is" + mode);
 // }
  
//}
//}



// Watch out for "unexpected tokekn: void"
 //  It takes me to a tab that is not where there is a mistake
//A common mistake is a missing brace, or{}
