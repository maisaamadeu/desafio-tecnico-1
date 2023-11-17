import 'dart:io';

void main() {
  print('------------------');
  print('DESAFIO TÉCNICO 1');
  print('------------------');

  bool continueCode;

  do {
    int inputNumber = getPositiveIntegerFromUser();

    final sum = sumMultiplesOf3Or5(inputNumber);
    print(
        'O somatório de todos os valores anteriores ao número inserido e que são divisíveis por 3 ou 5 é: $sum');
    print('------------------');

    continueCode = getUserResponse();
    print('------------------');
  } while (continueCode);

  print('ATÉ A PRÓXIMA!');
  print('------------------');
}

int getPositiveIntegerFromUser() {
  int? inputNumber;

  do {
    stdout.write("Digite um número inteiro positivo: ");
    final String? inputNumberString = stdin.readLineSync();
    inputNumber = int.tryParse(inputNumberString ?? '0');

    if (inputNumber == null) {
      print('------------------');
      print('Ops! O valor inserido não é um número inteiro, tente novamente!');
    }
  } while (inputNumber == null);

  return inputNumber;
}

bool getUserResponse() {
  String answer;

  do {
    stdout.write("Deseja inserir outro número? [S/N] ");
    answer = stdin.readLineSync().toString().toUpperCase();

    if (answer != 'S' && answer != 'N') {
      print('Resposta inválida! Vamos tentar novamente!');
      print('------------------');
    }
  } while (answer != 'S' && answer != 'N');

  return answer == 'S';
}

int sumMultiplesOf3Or5(int number) {
  int sum = 0;

  for (var i in Iterable<int>.generate(number).toList().reversed) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  return sum;
}
