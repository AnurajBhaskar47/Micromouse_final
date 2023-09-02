// Define the pins for each ultrasonic sensor
const int trigPin1 = 2;
const int echoPin1 = 3;
const int trigPin2 = 4;
const int echoPin2 = 5;
const int trigPin3 = 6;
const int echoPin3 = 7;

// Define variables for storing distance measurements
float distance1, distance2, distance3;

// Function to get distance from an ultrasonic sensor
float getDistance(int trigPin, int echoPin) {
  // Send a 10us pulse to trigger the sensor
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  // Measure the duration of the echo pulse and convert to distance
  float duration = pulseIn(echoPin, HIGH);
  float distance = duration * 0.034 / 2;

  return distance;
}

void setup() {
  // Initialize serial communication for debugging
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
  // Get distance from each sensor
  distance1 = getDistance(trigPin1, echoPin1);
  distance2 = getDistance(trigPin2, echoPin2);
  distance3 = getDistance(trigPin3, echoPin3);

  // Print the distance measurements to the serial monitor
  Serial.print("Distance 1: ");
  Serial.print(distance1);
  Serial.print(" cm, Distance 2: ");
  Serial.print(distance2);
  Serial.print(" cm, Distance 3: ");
  Serial.print(distance3);
  Serial.println(" cm");

  // Wait for a short time before taking another measurement
  delay(100);
}
