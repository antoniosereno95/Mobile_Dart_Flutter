
void main(){
  print(Fatorial(5));
}

int Fatorial(int numero){
  int fat = 1;
  for(int i = 1 ; i<=numero ; i++){
    fat = fat * i;
  }
  return fat;
}
