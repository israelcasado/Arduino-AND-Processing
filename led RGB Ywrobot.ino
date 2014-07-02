// Funcionamiento de leds RGB Ywrobot.ino

int luzRoja = 11;
int luzVerde = 5;
int luzAmarilla = 3;
int tiempo1 = 4000; // Tiempo color rojo y verde
int tiempo2 = 1500; // Tiempo color amarillo


void setup() {

	pinMode(luzRoja, OUTPUT);
	pinMode(luzAmarilla, OUTPUT);
	pinMode(luzVerde, OUTPUT);

	Serial.begin(9600);

}

void loop() {

	colores(255, 255, 0); // color verde
	Serial.write(1);
	delay(tiempo1);
	colores(0, 255, 0); // color amarillo
	Serial.write(2);
	delay(tiempo2);
	colores(0, 255, 255); // color rojo
	Serial.write(3);
	delay(tiempo1);

}

void colores(int rojo, int verde, int amarillo){
	analogWrite(luzRoja, rojo);
	analogWrite(luzVerde, verde);
	analogWrite(luzAmarilla, amarillo);
}
