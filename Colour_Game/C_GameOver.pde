void gameover(){
  background(245,106,106);
  fill(0);
  text("Highscore: "+hs, width/2, height/2);
  if(points>hs){
    hs=points;
  }
  
}

void gameoverClicks(){
  
}
