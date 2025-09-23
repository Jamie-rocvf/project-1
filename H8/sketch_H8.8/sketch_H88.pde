int aantalTermen = 10;

int a = 0;
int b = 1;

print("Fibonacci reeks tot " + aantalTermen + " termen: ");

for (int i = 0; i < aantalTermen; ++i) {
  print(a + ", ");

  int c = a + b;

  a = b;
  b = c;
}
