void game() {
  background(0);//black
  timer=timer+1;
  fill(255);
  rect(0, 0, 400, 600);
  fill(colors[gnr]);
  textSize(100);
  textAlign(CENTER, CENTER);
  text(colorWords[rng], 400, 300);
  textSize(25);
  fill(0);
  text("POINTS: "+points, 80, 40);
  coin=random(0, 1);
}

void gameClicks() {
  if (mouseX<width/2) {
    if (rng==gnr&&timer<80) {
      rng=int(random(0, 5));
      gnr=int(random(0, 5));
      timer=0;
      coin=random(0,1);
      if (coin<=0.5) {
        rng=gnr;
      } else {
        while (rng==gnr) {
          gnr=int(random(0, 1));
          rng=int(random(0, 1));
        }
      }
      points=points+1;
    } else if (rng!=gnr||timer==80) {
      println(gameover);
      mode=gameover;
    }
  } else if (mouseX>width/2) {
    if (rng!=gnr&&timer<60) {
      rng=int(random(0, 5));
      gnr=int(random(0, 5));
      points=points+1;
      coin=random(0, 1);
      timer=0;
      if (coin<=0.5) {
        rng=gnr;
      } else {
        while (rng==gnr) {
          gnr=int(random(0, 1));
          rng=int(random(0, 1));
        }
      }
      
    } else {
      mode=gameover;
    }
  }
}
