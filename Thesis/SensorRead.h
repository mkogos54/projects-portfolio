#ifndef SENSORREAD_H
#define SENSORREAD_H

struct SensorData {
    float pressure;
    float temperature;
    float humidity;
};

bool initialize_sensors(BelaContext *context);   
void bme280_read(float& pressure, float& temperature, float& humidity);
float temt6000_read(BelaContext *context);

#endif 