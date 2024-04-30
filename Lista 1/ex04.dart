
void main() {
  const double valorHoraNormal = 10.0;
  const double valorHoraExtra = 20.0;

  const int horasRegulares = 50;

  print("Digite o número de horas trabalhadas:");
  int horasTrabalhadas = 60;
  print("$horasTrabalhadas");

  double salarioTotal;
  double salarioExcedente;

  if (horasTrabalhadas <= horasRegulares) {
    salarioTotal = horasTrabalhadas * valorHoraNormal;
    salarioExcedente = 0;
  } else {
    int horasExtras = horasTrabalhadas - horasRegulares;
    salarioTotal = horasRegulares * valorHoraNormal + horasExtras * valorHoraExtra;
    salarioExcedente = horasExtras * valorHoraExtra;
  }

  print("O salário total é: R\$$salarioTotal");
  print("O salário excedente é: R\$$salarioExcedente");
}
