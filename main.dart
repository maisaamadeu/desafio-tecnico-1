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

  print('ATÉ A PRÓXIMA! OBRIGADA POR TESTAR.');
  print('------------------');
}

int getPositiveIntegerFromUser() {
  int userInput;

  do {
    stdout.write("Digite um número inteiro positivo: ");
    final String inputNumberString = stdin.readLineSync()!;
    userInput = int.tryParse(inputNumberString) ?? -1;

    if (userInput < 0) {
      print('------------------');
      print(
          'Ops! O valor inserido não é um número inteiro positivo, tente novamente!');
      print('------------------');
    }
  } while (userInput < 0);

  return userInput;
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

  for (var i = number - 1; i > 0; i--) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  return sum;
}
