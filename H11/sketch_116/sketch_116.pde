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

  telEnToonDubbeleNummers(i);
}

void telEnToonDubbeleNummers(int[] nummers) {
  int[] geteldStatus = new int[nummers.length];

  println("De nummers die 2 of meer keer voorkomen:");

  for (int j = 1; j < nummers.length; j++) {

    if (geteldStatus[j] != 1) {
      int nummer = nummers[j];
      int telling = 1;

      for (int k = j + 1; k < nummers.length; k++) {
        if (nummers[j] == nummers[k]) {
          telling++;
          geteldStatus[k] = 1;
        }
      }

      if (telling >= 2) {
        println("Nummer " + nummer + " komt " + telling + " keer voor.");
      }
    }
    geteldStatus[j] = 1;
  }
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
