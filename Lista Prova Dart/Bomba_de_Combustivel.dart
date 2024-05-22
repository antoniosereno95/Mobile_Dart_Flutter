void main(){

  BombaCombustivel bomba = BombaCombustivel("gasolina", 4.0, 0.0);

  bomba.alterarValorLitro(7.0);

  print("novo valor do litro ${bomba.valorLitro}");

}

class BombaCombustivel{
  //atributos
  String tipoCombustivel = "gasolina";
  double valorLitro = 4.0;
  double quantideCombustivel = 0; //depois modificar o codigo, 
  //essa é a quantidade de combustivel disponivel na bomba e 
  //nao a quantidade que a bomba vai por no carro da vez.

  /* 
  Esses atributos nao precisao sem criados, pois ele sao variaveis internas dos metodos;
  Só precisa declarar novos atributos se eu precisar que esses valores fiquem guardados...
  ou que esses valores necessitem ser utilizados em outro metodo
  (dai precisa salvar e declarar com atributo de classe).

  double valorRecebido = 0;
  double litroRecebido = 0;
  double valorDaCompra = 0;
  double novoValorLitro = 0;
  String String novoTipoCombustivel = "";
  double novoQuantidadeCombustivel = 0;
  */

  //Contrutor
  BombaCombustivel(this.tipoCombustivel, this.valorLitro, this.quantideCombustivel);
  //construtor padrao com todos os atributos necessarios para criação do objeto.

  //metodos
  double abastecerPorValor(double valorRecebido){
    quantideCombustivel = valorRecebido/valorLitro;
    return quantideCombustivel;
  }

  double abastecerPorLitro(double litroRecebido){
    double valorDaCompra = litroRecebido * valorLitro;
    return valorDaCompra;
  }

  void alterarValorLitro(double novoValorLitro){
    this.valorLitro = novoValorLitro;
  }

  void alteraCombustivel(String novoTipoCombustivel){
    this.tipoCombustivel = novoTipoCombustivel;
  }

  void alteraQuantidadeCombustivel(double novoQuantidadeCombustivel){
    this.quantideCombustivel = novoQuantidadeCombustivel;
  }

}