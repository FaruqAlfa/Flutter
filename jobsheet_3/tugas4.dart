import 'dart:io';

void main(){

  stdout.write("Masukkan Bilangan 1: ");
  int firstNumber = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Bilangan 2: ");
  int secondNumber = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Operator: ");
  String operator = stdin.readLineSync()!;

  switch(operator){
    case "+":
      //print('$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
      print('Hasilnya dari $firstNumber $operator $secondNumber adalah ${firstNumber + secondNumber}');
      break;
    case "-":
      //print('$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
      print('Hasilnya dari $firstNumber $operator $secondNumber adalah ${firstNumber - secondNumber}');
      break;
    case "*":
      //print('$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
      print('Hasilnya dari $firstNumber $operator $secondNumber adalah ${firstNumber * secondNumber}');
      break;
    case "/":
      //print('$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
      print('Hasilnya dari $firstNumber $operator $secondNumber adalah ${firstNumber / secondNumber}');
      break;
    default:
      print("Operasi tidak ditemukan");
      break;

      
  }
}
