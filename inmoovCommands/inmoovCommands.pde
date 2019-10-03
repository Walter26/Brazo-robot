import processing.serial.*;

Serial ardPort;
PImage back;  

void setup()
{
  fullScreen();
  ardPort = new Serial(this, "COM5", 9600);
  back = loadImage("Brazo.jpg");
}

void draw()
{
  background(back);
    if(keyPressed){
      switch(key){
        case '1':
          ardPort.write(0);
          break;
        case '2':
          ardPort.write(1);
          break;
        case '3':
          ardPort.write(2);
          break;
        case '4':
          ardPort.write(3);
          break;
        case '5':
          ardPort.write(4);
          break;
        case '6':
          ardPort.write(5);
          break;
        case '7':
          ardPort.write(6);
          break;
        case '8':
          ardPort.write(7);
          break;
        case 'j':
          ardPort.write(666);
          break;
      }
  }
}
