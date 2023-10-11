//import 'dart:io';

void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);


//eror
  // final finalList = List.filled(5, null);

  // finalList[1] = 'Nama: Mukhamad Faruq Al Fahmi';
  // finalList[1] = 'NIM: 2141720066';
  // assert(finalList[1] == 'Nama: Mukhamad Faruq Al Fahmi');
  // assert(finalList[2] == "NIM: 2141720066");

  // print(finalList[1]);
  // print(finalList[2]);


  //pembenaran
final finalList = List<String?>.filled(6, null);

finalList[1] = 'Nama: Mukhamad Faruq Al Fahmi';
finalList[2] = 'NIM: 2141720066';
assert(finalList[1] == 'Nama: Mukhamad Faruq Al Fahmi');
assert(finalList[2] == "NIM: 2141720066");

print(finalList[1]);
print(finalList[2]);
print(finalList[5]);
}
