int[] i = new int[10];

void setup() {
  i[1] = 12;
  i[2] = 24;
  i[3] = 36;
  i[4] = 12;
  i[5] = 60;
  i[6] = 70;
  i[7] = 89;
  i[8] = 12;
  i[9] = 20;

  println("Array-inhoud:");
  printArray(i);

  int zoekGetal1 = 12;
  int zoekGetal2 = 70;
  int zoekGetal3 = 5;

  println("Het getal " + zoekGetal1 + " komt " + telHoeVaakGetalVoorkomt(zoekGetal1) + " keer voor.");
  println("Het getal " + zoekGetal2 + " komt " + telHoeVaakGetalVoorkomt(zoekGetal2) + " keer voor.");
  println("Het getal " + zoekGetal3 + " komt " + telHoeVaakGetalVoorkomt(zoekGetal3) + " keer voor.");
}

int telHoeVaakGetalVoorkomt(int getal) {
  int telling = 0;
  
  for (int index = 1; index < i.length; index++) {
    if (i[index] == getal) {
      telling++;
    }
  }
  return telling;
}

void printArray(int[] arr) {
  String s = "{ ";
  for (int index = 1; index < arr.length; index++) {
    s += arr[index];
    if (index < arr.length - 1) {
      s += ", ";
    }
  }
  s += " }";
  println(s);
}
