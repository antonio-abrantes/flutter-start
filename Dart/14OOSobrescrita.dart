class Animal {
  String especie = '';
  String cor = '';

  Animal({String especie = ''}){
    this.especie = especie;
  }

  void dormir() {
    print('Dormindo');
  }

  void correr() {
    print('Correr');
  }
}

class Cao extends Animal {
  Cao({String especie = ''}) : super(especie: especie);
  
  void latir() {
    print('Au au au!');
  }

  @override
  void correr() {
    print('O cão esta correndo');
  }
}

class Passaro extends Animal {
  Passaro({String especie = ''}) : super(especie: especie);
  
  void cantar() {
    print('Piu piu piu!');
  }

  @override
  void correr() {
    super.correr();
    print('O passaro esta correndo');
  }
}

void main(List<String> args) {
  Cao cao = new Cao(especie: 'Cão');
  cao.dormir();
  cao.latir();
  cao.correr();

  Passaro passaro = new Passaro(especie: 'Passaro');
  passaro.dormir();
  passaro.cantar();
  passaro.correr();
}
