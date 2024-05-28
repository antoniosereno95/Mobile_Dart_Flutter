

void main(){
  Conta_Corrente conta1 = Conta_Corrente(001, "Arthur");
  conta1.deposito(500);
  conta1.saque(250);
  print(conta1.saldo);
}


class Conta_Corrente{
  double numero_conta;
  String nome_correntista;
  double saldo;

  Conta_Corrente(this.numero_conta,
   this.nome_correntista,{this.saldo=0});

  double deposito(double valor_depositado){
    this.saldo = this.saldo + valor_depositado;
    return saldo;
  }

  double saque(double valor_saque){
    this.saldo = this.saldo - valor_saque;
    return saldo;
  }
}