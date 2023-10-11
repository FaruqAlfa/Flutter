void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  //var names3 = {}; // Creates a map, not a set.
  names1.add('Mukhamad Faruq Al Fahmi');
  names1.add('2141720066');

  names2.addAll(names1);
  // atau
  // names2.addAll({"Mukhamad Faruq Al Fahmi", "2141720066"});

  print(names1);
  print(names2);
}

