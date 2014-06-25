import processing.serial.*;

Serial myPort; // The serial port:

int Datos;
int valor1 = 1;
int valor2 = 2;
int valor3 = 3;

void setup() {
  size(500, 500);
  background(255);

  println(Serial.list());

  // You may need to change the number in [ ] to match 
  // the correct port for your system
  myPort = new Serial(this, Serial.list()[2], 9600);
}
  void draw() {

    while (myPort.available () > 0) {
      Datos = myPort.read();
      println(Datos);
    }
    
   luces();
  }
  
    void luces() {
  if (Datos == valor1) {
    background(255, 0, 0);
  } 
  if (Datos == valor2) {
    background(0, 255, 0);
  } 
  if (Datos == valor3) {
    background(0, 0, 255);
  } 
    }

