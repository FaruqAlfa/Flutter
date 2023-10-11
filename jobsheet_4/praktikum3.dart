void main() {
//   var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
  
// };

// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };

// print(gifts);
// print(nobleGases);

// var mhs1 = Map<String, String>();
// gifts['first'] = 'partridge';
// gifts['second'] = 'turtledoves';
// gifts['fifth'] = 'golden rings';

// var mhs2 = Map<int, String>();
// nobleGases[2] = 'helium';
// nobleGases[10] = 'neon';
// nobleGases[18] = 'argon';


// perbaikan
 var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1,
  'nama': 'Mukhamad Faruq Al Fahmi',
  'NIM': 2141720066
  
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  'nama': 'Mukhamad Faruq Al Fahmi',
  'NIM': 2141720066
};


var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';
gifts['nama'] = 'Mukhamad Faruq Al Fahmi';
gifts['NIM'] = '2141720066';


var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
nobleGases['nama'] = 'Mukhamad Faruq Al Fahmi';
nobleGases['NIM'] = '2141720066';


print('/n'); 
  print("gifts: $gifts\n");
  print("nobleGases: $nobleGases\n");
  print("Mahasiswa 1: $mhs1\n");
  print("Mahasiswa 2: $mhs2\n");
}
