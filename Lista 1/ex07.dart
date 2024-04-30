import 'dart:math';

void main() {
  Random random = Random();

  int quantidadeValores = 0;
  int somaValores = 0;

  while (true) {
    
    int valor = random.nextInt(31) + 10;
    quantidadeValores++; 
    somaValores += valor; 

    if (valor == 25) {
      break;
    }
  }

  print("Foram gerados $quantidadeValores valores.");
  print("A soma dos valores gerados é: $somaValores");
}
