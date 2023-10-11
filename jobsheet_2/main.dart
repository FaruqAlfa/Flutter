import 'dart:io';

void main() {
  print('Masukkan Nama Anda: ');
  String nama1 = stdin.readLineSync()!;

  print('Masukkan Umur: ');
  int umur1 = int.parse(stdin.readLineSync()!);

  print('Masukkan nama teman Anda: ');
  String nama2 = stdin.readLineSync()!;

  print('Masukkan Umur Teman Anda: ');
  int umur2 = int.parse(stdin.readLineSync()!);

  String gabungNama = '$nama1$nama2';

  print('Nama Kami: $gabungNama');
  int totalUmur = umur1 + umur2;
  print('Total Umur Kami: $totalUmur');

  print('Gabungan nama kami $gabungNama dan jumlah umur kami $totalUmur');

  // stdout.write('Masukkan Nama Anda: ');
  // String nama1 = stdin.readLineSync()!;

  // print('Halo, $nama1!');
}
