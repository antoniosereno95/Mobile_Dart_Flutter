void funcao(int numero){
  int resultado;
  for(int i=0 ; i<10;i++){
    resultado = numero * i;
    print("$numero X $i = $resultado");
  }
}

void main(){
  funcao(4);
}