// Define the pins for each ultrasonic sensor
// 1 is left
// 2 is front
//3 is right
const int trigPin1 = 2;
const int echoPin1 = 3;
const int trigPin2 = 4;
const int echoPin2 = 5;
const int trigPin3 = 6;
const int echoPin3 = 7;

// Define variables for the distances measured by each sensor
int distance1 = 0;
int distance2 = 0;
int distance3 = 0;

void setup() {
  // Initialize the serial communication for debugging purposes
  Serial.begin(9600);

  // Set the trigger pins as outputs
  pinMode(trigPin1, OUTPUT);
  pinMode(trigPin2, OUTPUT);
  pinMode(trigPin3, OUTPUT);

  // Set the echo pins as inputs
  pinMode(echoPin1, INPUT);
  pinMode(echoPin2, INPUT);
  pinMode(echoPin3, INPUT);
}

void loop() {
  // Measure distance using the first sensor
  digitalWrite(trigPin1, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin1, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin1, LOW);
  distance1 = pulseIn(echoPin1, HIGH) / 58.2;

  // Measure distance using the second sensor
  digitalWrite(trigPin2, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin2, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin2, LOW);
  distance2 = pulseIn(echoPin2, HIGH) / 58.2;

  // Measure distance using the third sensor
  digitalWrite(trigPin3, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin3, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin3, LOW);
  distance3 = pulseIn(echoPin3, HIGH) / 58.2;

  // Print the distances to the serial monitor
  Serial.println(distance1);
  Serial.println(distance2);
  Serial.println(distance3);
}
