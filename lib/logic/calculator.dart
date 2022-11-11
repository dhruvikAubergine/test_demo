class Calculator {
  double add(double firstNumber, double secondNumber) =>
      firstNumber + secondNumber;

  double sub(double firstNumber, double secondNumber) =>
      firstNumber - secondNumber;

  double mul(double firstNumber, double secondNumber) =>
      firstNumber * secondNumber;

  double div(double firstNumber, double secondNumber) =>
      secondNumber == 0 ? 0 : (firstNumber / secondNumber);
}
