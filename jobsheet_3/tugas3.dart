void main() {
  var a = '';
  var i = 10;

  do {
    var j = 0;
    do {
      a += '*';
      j++;
    } while (j < i);

    a += '\n';
    i--;
  } while (i > 0);

   print(a);
}