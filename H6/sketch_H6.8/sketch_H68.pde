float cijfer = 8.5f;
boolean diploma = false;
boolean cumLaude = false;

if (cijfer >= 5.5f) {
diploma = true;
}

if (cijfer > 8.0f) {
cumLaude = true;
}

if (diploma && !cumLaude) {
println("Gefeliciteerd, je bent geslaagd!");
}

if (cumLaude) {
println("Gefeliciteerd, je bent cumlaude geslaagd!");
}
