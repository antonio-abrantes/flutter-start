void main(List<String> args) {
  var numero = 1;

  while (numero < 5) {
    print(numero);
    numero++;
  }

  print('================');

  do {
    print(numero);
    numero--;
  } while (numero >= 1);

  print('================');

  var count = 5;

  for (var i = 1; i < count; i++) {
    print('Interação $i');
  }

  print('================');

  var postagens = [
    'Frase 01',
    'Frase 02',
    'Frase 03',
    'Frase 04',
  ];

  for (var postagem in postagens) {
    print(postagem);
  }
}
