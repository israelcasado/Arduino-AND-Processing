//* Semáforo básico accionado a través de puerto serie //
//* www.israelcasado.com  - @israc //
//* Dibujo básico del semaforo diseñado por @luisdecam //

import processing.serial.*;

Serial myPort; 

int Datos;
int valor1 = 1;
int valor2 = 2;
int valor3 = 3;

void setup(){
  size(160, 300);
  println(Serial.list()); 

  myPort = new Serial(this, Serial.list()[2], 9600); // Asignar puerto serie
}
  
void draw(){
  
  while (myPort.available () > 0) {
      Datos = myPort.read();
      // println(Datos); Activar si queremos ver Datos por Monitor serial.
    }
    
background(17, 200, 242);
smooth(); 
fill(88, 60, 23); 
strokeWeight(1);
rect(75, 150, 10, 100);
fill(45, 87, 44); 
rect(65, 50, 30, 100);
fill(255, 255, 255); 
  if (Datos == valor3){
    fill(250,0,0);
  }
strokeWeight(0);
ellipse(80, 70, 20, 20);
fill(255, 255, 255); 
if (Datos == valor2){
    fill(255,255,0);
  }
ellipse(80, 100, 20, 20);
fill(255, 255, 255); 
if (Datos == valor1){
    fill(0,255,0);
  }
ellipse(80, 130, 20, 20);
fill(100); 
rect(0, 250, 160, 50);
strokeWeight(3);
line(0, 250, 160, 250);
fill(255);
strokeWeight(0);
rect(0, 270, 20, 10);
rect(30, 270, 20, 10);
rect(60, 270, 20, 10);
rect(90, 270, 20, 10);
rect(120, 270, 20, 10);
rect(150, 270, 20, 10);
}
