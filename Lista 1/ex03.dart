
void main() {
  print("Digite o valor inicial (principal):");
  var principal = 1000.0;

  print("Digite a taxa de juros (em porcentagem):");
  var taxaJuros = 5.0;

  print("Digite o tempo em anos:");
  var tempoAnos = 30;

  var montanteFinal = calcularMontanteFinal(principal, taxaJuros, tempoAnos);

  print("O montante final após $tempoAnos anos, com uma taxa de juros de $taxaJuros%, é: $montanteFinal");
}

double calcularMontanteFinal(double principal, double taxaJuros, int tempoAnos) {
  
  var taxaJurosDecimal = taxaJuros / 100;

  var montanteFinal = principal * (1 + taxaJurosDecimal * tempoAnos);

  return montanteFinal;
}