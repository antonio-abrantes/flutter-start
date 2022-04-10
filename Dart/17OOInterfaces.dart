abstract class Presidenciavel {
  void participarEleicao();
}

abstract class Jornalista {
  void escreverArtigo();
}

abstract class Cidadao {
  void direitosEDeveres() {
    print('Todo cidadão tem direitos e deveres');
  }
}

class Obama extends Cidadao implements Presidenciavel {
  @override
  void participarEleicao() {
    print('Posso participar de uma eleição nos EUA!');
  }
}

class Antonio extends Cidadao implements Jornalista{
  @override
  void escreverArtigo() {
    print('Eu posso escrver artigos para jornal!');
  }
}

void main(List<String> args) {
  
  Antonio cd1 = new Antonio();
  print('Antonio: ');
  cd1.direitosEDeveres();
  cd1.escreverArtigo();

  Obama cd2 = new Obama();
  print('Obama: ');
  cd2.direitosEDeveres();
  cd2.participarEleicao();
}