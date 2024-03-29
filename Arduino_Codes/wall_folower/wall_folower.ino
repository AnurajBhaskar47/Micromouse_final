#include <NewPing.h>

 

#define SONAR_NUM     3            //define Number of ultrasonic sensor used

#define MAX_DISTANCE 800            //Max distance between the object and robot

#define PING_INTERVAL 33           

 

#define trigPin1 6                  // define pin connections for sensor and motor

#define echoPin1 5

#define trigPin2 11

#define echoPin2 10

#define trigPin3 13

#define echoPin3 12

#define LM1 2      

#define LM2 3     

#define RM1 7 

#define RM2 8    

 

int rangeFront = 0;

int rangeWall  = 0;

 

NewPing sonar[SONAR_NUM] = {                                // Define a Newping array to measure the distance

  NewPing(trigPin1, echoPin1, MAX_DISTANCE),

  NewPing(trigPin2, echoPin2, MAX_DISTANCE)

};

void setup()               // setup function to make pin configuration to define whether it is input or output

{

  Serial.begin(9600);

  int i;

  pinMode(LM1, OUTPUT);

  pinMode(LM2, OUTPUT);

  pinMode(RM1, OUTPUT);

  pinMode(RM2, OUTPUT);

  pinMode(en1, OUTPUT);

  pinMode(en2, OUTPUT);

 

  pinMode(trigPin1, OUTPUT);

  pinMode(echoPin1, INPUT);

  digitalWrite(trigPin1, LOW);

 

  pinMode(trigPin2, OUTPUT);

  pinMode(echoPin2, INPUT);

  digitalWrite(trigPin2, LOW);

}

 

int toCloseWall = 1800;           //Initialze and define the values for distance between wall and robot

int toFarWall = 2500;

int toCloseFront = 1000;

 

void loop()

{

Main:

  rangeFront = readRangeFront();  // Read the sensor value by the function call

  Serial.print(rangeFront);          

  Serial.print(" Front");

  Serial.println();

  rangeWall = readRangeWall();

  Serial.print(rangeWall);

  Serial.print(" Wall");

  Serial.println(); 

 

  if (rangeFront <= 400)         //As the sensor value reads the small values we are manipulating to high values

  {

    rangeFront = 3000;

  }

  if(rangeWall <= 400)

  {

    rangeWall = 3000;

  }

 

 if (rangeFront < toCloseFront)  //Condition to check whether front sensor is close to robot

 {

    delay(500);

    drive_backward();

    delay(500);

    Serial.print(" Drive Back");

    //turn_right();

    Serial.print(" Right Turn");

    Serial.println();

    delay(800);

    drive_forward();

    turn_left();

    delay(1700);

    goto Main;   

  } 

 

  if(rangeWall > toCloseWall && rangeWall < toFarWall) //condition to check distance measured by front and side sensor is maintained correctly

  {

    drive_forward();

    Serial.print(" Drive Forward");

    Serial.println();

    goto Main;

  } 

 

  if (rangeWall < toCloseWall)                       //condition to check side wall is close to robot

  {

    delay(100);

    //turn_left();

    turn_right();

    delay(500);

    Serial.print(" Turn Left");

    drive_forward();

    Serial.print(" Drive Forward");

    Serial.println();

    goto Main;

  }

  if (rangeWall > toFarWall)                         //condition to check robot is far from side wall

  {

    delay(100);

    //turn_right();

    turn_left();

    Serial.print(" Turn Right");void setup() {
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:

}


    delay(500);

    drive_forward();

    Serial.print(" Drive Forward");

    Serial.println();

    goto Main;

  } 

}

 

void motor_stop()                                  // function to stop the robot

{   

    digitalWrite(LM1, LOW);

    digitalWrite(LM2, LOW);

    digitalWrite(RM1, LOW);

    digitalWrite(RM2, LOW);

}

 

void drive_forward()                               // function to drive the robot forward

{   

    digitalWrite(LM1, HIGH);

    digitalWrite(LM2, LOW);

    digitalWrite(RM1, HIGH);

    digitalWrite(RM2, LOW);

}

 

void drive_backward()                             // function to drive the robot backward

{   

    digitalWrite(LM1, LOW);

    digitalWrite(LM2, HIGH);

    digitalWrite(RM1, LOW);

    digitalWrite(RM2, HIGH);

}

 

void turn_left()                                  // function to turn the robot left

{  

    digitalWrite(LM1, HIGH);

    digitalWrite(LM2, LOW);

    digitalWrite(RM1, LOW);

    digitalWrite(RM2, LOW);

}

 

void turn_right()                                     //function to turn the robot right

{

    digitalWrite(LM1, LOW);

    digitalWrite(LM2, LOW);

    digitalWrite(RM1, HIGH);

    digitalWrite(RM2, LOW);

}

 

int readRangeFront()                                 //function to read the front sensor value

{

  delay(50);

  unsigned rangeFront = sonar[0].ping();

  sonar[0].timer_stop();

  return rangeFront;

}

int readRangeWall()                                 // function to read the left sensor value

{

  delay(50);

  unsigned rangeWall = sonar[1].ping();

  sonar[1].timer_stop();

  return rangeWall;

}
