void setup() {
  // put your setup code here, to run once:
  Serial.begin(57600);
}

void loop() {
  // put your main code here, to run repeatedly:
  byte reading = analogRead(7) >> 2;
  Serial.write(reading);
  delay(2);
}
