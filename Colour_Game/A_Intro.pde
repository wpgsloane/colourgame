void intro(){
  background (23,45,89);//navy
  ellipse(200,400, 200,200);
}

void introClicks(){
  if (dist(200,400,mouseX,mouseY)<100){
    mode=game;
  }
}
