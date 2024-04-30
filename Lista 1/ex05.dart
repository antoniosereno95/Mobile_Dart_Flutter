
void main() {
  print("Digite um número:");
  var numero = 14;

  if (ehPrimo(numero)) {
    print("$numero é um número primo.");
  } else {
    print("$numero não é um número primo.");
  }
}

bool ehPrimo(int numero) {
  if (numero <= 1) {
    return false; 
  }
  for (var i = 2; i <= numero / 2; i++) {
    if (numero % i == 0) {
      return false; 
    }
  }
  return true; 
  }
