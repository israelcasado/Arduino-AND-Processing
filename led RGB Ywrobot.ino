// led RGB Ywrobot.ino

int luzRoja = 11;
int luzVerde = 5;
int luzAzul = 3;
int tiempo = 3000;
char valor;
int encendido = 13;

void setup() {

	pinMode(luzRoja, OUTPUT);
	pinMode(luzAzul, OUTPUT);
	pinMode(luzVerde, OUTPUT);
	pinMode(encendido, OUTPUT);

	Serial.begin(9600);
	
}

void loop() {
	valor = Serial.read();

	colores(0, 255, 255); // color rojo
	Serial.write(1);
	Serial.read();
	delay(tiempo);
	colores(255, 0, 255); // color verde
	Serial.write(2);
	delay(tiempo);
	colores(255, 255, 0); // color azul
	Serial.write(3);
	delay(tiempo);

	if (valor == 'A'){
		digitalWrite(13, HIGH);
	} 
	if (valor == 20){
		digitalWrite(13, LOW);
	} 
	

}

void colores(int rojo, int verde, int azul){
	analogWrite(luzRoja, rojo);
	analogWrite(luzVerde, verde);
	analogWrite(luzAzul, azul);
}

