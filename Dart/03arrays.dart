void main(List<String> args) {
  
  var nomes = ['Nome1', 'Nome2'];

  nomes.add('Nome3');

  nomes.removeAt(0);

  print(nomes[1]);
  print(nomes);

}