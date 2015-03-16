﻿-- 1. Create table in HAWQ that will house the data

drop table if exists stage.car_sample_data;
create table stage.car_sample_data (
 time timestamp,
 vehicleSpeed numeric,
 instantFuelEconomy numeric,
 totalFuelEconomy numeric,
 fuelRate numeric,
 calculatedLoadValue numeric,
 engineCoolantTemperature numeric,
 shortTermFuelTrimBank1 numeric,
 longTermFuelTrimBank1 numeric,
 shortTermFuelTrimBank2 numeric,
 longTermFuelTrimBank2 numeric,
 fuelRailPressureGauge numeric,
 intakeManifoldAbsolutePressurePSI numeric,
 engineRPM numeric,
 ignitionTimingAdvanceForCylander1 numeric,
 intakeAirTemperature numeric,
 massAirFlowRate numeric,
 absoluteThrottlePosition numeric,
 o2VoltageBank1Sensor1 numeric,
 shortTermFuelTrimBank1Sensor1 numeric,
 o2VoltageBank1Sensor2 numeric,
 shortTermFuelTrimBank1Sensor2 numeric,
 o2VoltageBank1Sensor3 numeric,
 shortTermFuelTrimBank1Sensor3 numeric,
 o2VoltageBank1Sensor4 numeric,
 shortTermFuelTrimBank1Sensor4 numeric,
 o2VoltageBank2Sensor1 numeric,
 shortTermFuelTrimBank2Sensor1 numeric,
 o2VoltageBank2Sensor2 numeric,
 shortTermFuelTrimBank2Sensor2 numeric,
 o2VoltageBank2Sensor3 numeric,
 shortTermFuelTrimBank2Sensor3 numeric,
 o2VoltageBank2Sensor4 numeric,
 shortTermFuelTrimBank2Sensor4 numeric,
 timeSinceEngineStart int,
 distanceTraveledWhileMILAactivated numeric,
 fuelRailPressureRelativeToManifoldCacuum numeric,
 fuelRailPressure numeric,
 o2Sensor1Lambda numeric,
 o2Sensor1VoltageWideRange numeric,
 o2Sensor2Lambda numeric,
 o2Sensor2VoltageWideRange numeric,
 o2Sensor3Lambda numeric,
 o2Sensor3VoltageWideRange numeric,
 o2Sensor4Lambda numeric,
 o2Sensor4VoltageWideRange numeric,
 o2Sensor5Lambda numeric,
 o2Sensor5VoltageWideRange numeric,
 o2Sensor6Lambda numeric,
 o2Sensor6VoltageWideRange numeric,
 o2Sensor7Lambda numeric,
 o2Sensor7VoltageWideRange numeric,
 o2Sensor8Lambda numeric,
 o2Sensor8VoltageWideRange numeric,
 commandedEGR numeric,
 eGRerror numeric,
 commandedEvaporativePurge numeric,
 fuelLevelInput numeric,
 numberOfWarmUpsSinceDTCsCleared int,
 distanceTraveledSinceDTCsCleared numeric,
 evapSystemVaporPressure numeric,
 barometricPressure numeric,
 o2Sensor1LambdaWideRange numeric,
 o2Sensor1CurrentWideRange numeric,
 o2Sensor2LambdaWideRange numeric,
 o2Sensor2CurrentWideRange numeric,
 o2Sensor3LambdaWideRange numeric,
 o2Sensor3CurrentWideRange numeric,
 o2Sensor4LambdaWideRange numeric,
 o2Sensor4CurrentWideRange numeric,
 o2Sensor5LambdaWideRange numeric,
 o2Sensor5CurrentWideRange numeric,
 o2Sensor6LambdaWideRange numeric,
 o2Sensor6CurrentWideRange numeric,
 o2Sensor7LambdaWideRange numeric,
 o2Sensor7CurrentWideRange numeric,
 o2Sensor8LambdaWideRange numeric,
 o2Sensor8CurrentWideRange numeric,
 catalystTemperatureBank1Sensor1 numeric,
 catalystTemperatureBank2Sensor1 numeric,
 catalystTemperatureBank1Sensor2 numeric,
 catalystTemperatureBank2Sensor2 numeric,
 controlModuleVoltage numeric,
 absoluteLoadValue numeric,
 fuelAirCommandedEquivalenceRatio numeric,
 relativeThrottlePosition numeric,
 ambientAirTemperature numeric,
 absoluteThrottlePositionB numeric,
 absoluteThrottlePositionC numeric,
 acceleratorPedalPositionD numeric,
 acceleratorPedalPositionE numeric,
 acceleratorPedalPositionF numeric,
 commandedThrottleActuatorControl numeric,
 engineRunTimeRunWhileMILisActivated numeric,
 engineRunTimeSinceDTCsCleared numeric,
 alcoholFuelPercentage numeric,
 absoluteEvapSystemVaporPressure numeric,
 evapSystemVaporPressure2 numeric,
 shortTermSecondaryOxygenSensorTrimBank1 numeric,
 shortTermSecondaryOxygenSensorTrimBank3 numeric,
 longTermSecondaryOxygenSensorTrimBank1 numeric,
 longTermSecondaryOxygenSensorTrimBank3 numeric,
 shortTermSecondaryOxygenSensorTrimBank2 numeric,
 shortTermSecondaryOxygenSensorTrimBank4 numeric,
 longTermSecondaryOxygenSensorTrimBank2 numeric,
 longTermSecondaryOxygenSensorTrimBank4 numeric,
 fuelRailPressure2 numeric,
 relativeAcceleratorPedalPosition numeric,
 hybridBatteryPackRemainingLife numeric,
 engineOilTemperature numeric,
 fuelInjectionTiming numeric,
 engineFuelRate numeric,
 inputVoltageReadByTheScanTool numeric,
 intakeManifoldAbsolutePressure numeric,
 massAirFlowRate2 numeric,
 boost numeric,
 acceleration numeric,
 averageAcceleration numeric,
 longitude numeric,
 latitude numeric,
 altitude numeric,
 bearing numeric,
 gpsSpeed numeric,
 gpsAccuracy numeric
 )
WITH (appendonly=true, compresstype=quicklz)
DISTRIBUTED RANDOMLY;
