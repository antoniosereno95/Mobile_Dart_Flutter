
void main(){

  Retangulo retangulo1 = Retangulo(10, 10);
  print(retangulo1.area());
  print(retangulo1.perimetro());

}

class Retangulo{
  double largura;
  double altura;

  Retangulo(this.altura, this.largura);

  double area(){
    double areaa = this.altura * this.largura;
    return areaa;
  }

  double perimetro(){
    double peri = 2*this.largura + 2*this.altura;
    return peri;
  }
  
}