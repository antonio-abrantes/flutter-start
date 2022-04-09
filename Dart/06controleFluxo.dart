void main(List<String> args) {
  var idade = 11;

  if (idade >= 18) {
    print('Maior de idade');
  } else if (idade < 18 && idade > 14) {
    print('Menor de idade');
  } else {
    print('É uma criança!');
  }

  var comando = 2;

  switch (comando) {
    case 1:
      print('1 2 3');
      print('4 5 6');
      break;
    case 2:
      print('10 20 30');
      print('40 50 60');
      break;
    case 3:
      print('100 200 300');
      print('400 500 600');
      break;
    default:
      print('Nenhuma das opcões escolhidas');
  }
}
