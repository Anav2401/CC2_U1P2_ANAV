
class Bullet
{
  PVector Position;
  PVector Direction;
  float Rotation;
  float O;
  float A;
  float ratio;
  

  Bullet()
  {
    Position = new PVector(width/2, height/2);
    Direction = new PVector(1, 0);
  }
  Bullet(float _mX, float _mY)
  {
    Position = new PVector( width/2, height/2);
    Direction = new PVector(_mX - Position.x, _mY - Position.y); // MOUSE - POSITION
    Direction.normalize();
    fill(random(255),random(255),random(255));
  }
  void Update()
  {
    Position.add(Direction);
  O = Position.y - mouseY;
  A = Position.x - mouseX;
  ratio = O/A;
  Rotation = degrees(atan(ratio));
  pushMatrix();
  translate(width/2,height/2);
  rotate(Rotation);
  image(bullet,Position.x, Position.y);
  popMatrix();
}
}