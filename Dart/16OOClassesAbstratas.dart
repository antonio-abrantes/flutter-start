abstract class Animal {
  String especie = '';
  String cor = '';

  Animal({String especie = ''}) {
    this.especie = especie;
  }

  void dormir();
}

class Cao extends Animal {
  Cao({String especie = ''}) : super(especie: especie);

  @override
  void dormir() {
    print('O cão esta dormindo');
  }
}

class Passaro extends Animal {
  Passaro({String especie = ''}) : super(especie: especie);

  @override
  void dormir() {
    print('O passaro esta dormindo');
  }
}

void main(List<String> args) {
  // Animal cao = new Animal(especie: 'Cão');
  Cao cao = new Cao(especie: 'Cão');
  cao.dormir();
}
