class Animal {

  String especie = '';
  String cor = '';

  void dormir(){
    var temp = this.especie;
    print('$temp Dormindo');
  }
}

class Cao extends Animal {
  Cao({String especie = ''}){
    this.especie = especie;
  }
  void latir(){
    print('Au au au!');
  }
}

class Passaro extends Animal{
  Passaro({String especie = ''}){
    this.especie = especie;
  }
  void cantar(){
    print('Piu piu piu!');
  }
}

void main(List<String> args) {
  
  Cao cao = new Cao(especie: 'Cão');
  cao.dormir();
  cao.latir();

  Passaro passaro = new Passaro(especie: 'Passaro');
  passaro.dormir();
  passaro.cantar();

}