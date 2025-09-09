float KG = 110.0;
float CM = 180.0;
float M = CM / 100.0;

float bmi = KG / (M * M);

println("Met een gewicht van " + KG + " kg en een lengte van " + CM + " cm, is jouw BMI " + round(bmi));
