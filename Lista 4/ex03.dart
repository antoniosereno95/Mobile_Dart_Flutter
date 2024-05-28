
void main(){
  Pais pais1 = Pais("BRA", "brasil", populacao:5, dimencao_km2:10 );
  Pais pais2 = Pais("BR", "brasil", populacao:5, dimencao_km2:10 );

  print(pais1.verifica_Igualdade(pais2));
  print(pais1.densidade_populacional());
}

class Pais{
  String codigo_ISO;
  String nome;
  double populacao;
  double dimencao_km2;

  Pais(this.codigo_ISO, this.nome,
   {this.populacao=0, this.dimencao_km2=-1});
  
  String verifica_Igualdade(Pais externo){
    if(this.codigo_ISO == externo.codigo_ISO){
      return "Paises Iguais";
    }else{
      return "Paises Diferentes";
    }
  }

  double densidade_populacional(){
    double densidade_p = this.dimencao_km2 / this.populacao;
    return densidade_p;
  }
}