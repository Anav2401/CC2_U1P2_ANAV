import processing.sound.*;
SoundFile file;
PImage Bart;
Bullet b;
float X = 750;
float Y = 750;
PImage bullet;
float ratio;
float rotationz;
ArrayList<Bullet>Bullets = new ArrayList<Bullet>();
void setup ()
{
  file = new SoundFile(this, "Thug Life Theme Song.mp3");
  file.loop();
  size (800,800, P3D);
  colorMode(HSB);
  b = new Bullet ();
  Bart = loadImage("Bartthug.png");
  Bart.resize(200, 200);
  imageMode(CENTER);
  bullet = loadImage("bullet.png");
}
void draw ()
{
  background(0);
  b.Update();
  stroke(random(255), random(255), random(255));
  Bullets.add(new Bullet(mouseX, mouseY));

  for ( Bullet i : Bullets)
  {
    i.Update();
  }
  if ( Bullets != null)
  {
    for ( int i = Bullets.size()-1; i >= 0; i--)
    {
      if (Bullets.get(i).Position.x > width || Bullets.get(i).Position.x < 0)
      {
        Bullets.remove(i);
      }
    }
  }
  image(Bart,width/2,height/2);
}