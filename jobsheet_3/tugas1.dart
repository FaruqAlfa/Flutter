import 'dart:io';

int mainCode() {
  // declaration variable
int oilThatShouldBuy = 0;
// ---[ Tulis kodemu setelah baris ini ]---

    print("Apakah Anda perlu membeli minyak goreng? (ya/tidak)");
    String buyOil = stdin.readLineSync()!;
    
    if (buyOil.toLowerCase() == "ya") {
      oilThatShouldBuy += 1;
    }

    print("Apakah Anda perlu membeli telur? (ya/tidak)");
    String buyEggs = stdin.readLineSync()!;
    
    if (buyEggs.toLowerCase() == "ya") {
      oilThatShouldBuy += 5;
    }
  

// ---[ Jangan menulis atau mengubah kode di bawah ini ]---
return oilThatShouldBuy;

}

void main() {
  int result = mainCode();
  print("Jumlah minyak goreng yang harus Anda beli: $result botol");
}