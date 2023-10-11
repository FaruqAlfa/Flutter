import 'dart:io';

void main() {
  stdout.write('Masukkan tinggi segitiga ganjil: ');
  int star = int.parse(stdin.readLineSync() ?? '0');

  if (star.isOdd) {
    int maxBintang = (star + 1) ~/ 2;

    int i = 1;
    while (i <= maxBintang) {
      int j = 1;
      while (j <= star) {
        if (j >= maxBintang - i + 1 && j <= maxBintang + i - 1)
          stdout.write("*");
        else
          stdout.write(" ");
        j++;
      }
      print(" ");
      i++;
    }
  } else {
    print('Tinggi segitiga harus ganjil.');
  }

}
