import 'package:flutter_test/flutter_test.dart';
import 'package:test_demo/logic/calculator.dart';

void main() {
  group('tests for addition', () {
    final calculator = Calculator();

    test('should return a + b when a and b are two positives.', () {
      // arrange
      const a = 10.0;
      const b = 20.0;
      const expectedResult = a + b;

      // act
      final actualResult = calculator.add(a, b);

      // assert
      expect(actualResult, expectedResult);
    });

    test('should return a + b when a and b are two negatives.', () {
      // arrange
      const a = -10.0;
      const b = -20.0;
      const expectedResult = a + b;

      // act
      final actualResult = calculator.add(a, b);

      //assert
      expect(actualResult, expectedResult);
    });

    test('should return a + b when a is negative and b is positive', () {
      // arrange
      const a = -10.0;
      const b = 20.0;
      const expectedResult = a + b;

      // act
      final actualResult = calculator.add(a, b);

      //assert
      expect(actualResult, expectedResult);
    });

    test('should return a + b when a is positive and b is negative.', () {
      // arrange
      const a = -10.0;
      const b = -20.0;
      const expectedResult = a + b;

      // act
      final actualResult = calculator.add(a, b);

      //assert
      expect(actualResult, expectedResult);
    });
  });
  group('tests for subtraction', () {
    final calculator = Calculator();

    test('should return a - b when a and b are two positives.', () {
      // arrange
      const a = 10.0;
      const b = 20.0;
      const expectedResult = a - b;

      // act
      final actualResult = calculator.sub(a, b);

      // assert
      expect(actualResult, expectedResult);
    });

    test('should return a - b when a and b are two negative.', () {
      // arrange
      const a = -10.0;
      const b = -20.0;
      const expectedResult = a - b;

      // act
      final actualResult = calculator.sub(a, b);

      // assert
      expect(actualResult, expectedResult);
    });

    test('should return a - b when a is negative and b is positive.', () {
      // arrange
      const a = -10.0;
      const b = 20.0;
      const expectedResult = a - b;

      // act
      final actualResult = calculator.sub(a, b);

      // assert
      expect(actualResult, expectedResult);
    });

    test('should return a - b when a is positive and b is negative.', () {
      // arrange
      const a = 10.0;
      const b = -20.0;
      const expectedResult = a - b;

      // act
      final actualResult = calculator.sub(a, b);

      // assert
      expect(actualResult, expectedResult);
    });
  });
  group('tests for multiplication', () {
    final calculator = Calculator();
    test('should return a * b when a and b are two positives.', () {
      // arrange
      const a = 10.0;
      const b = 20.0;
      const expectedResult = a * b;

      // act
      final actualResult = calculator.mul(a, b);

      // assert
      expect(actualResult, expectedResult);
    });
    test('should return a * b when a and b are two negatives.', () {
      // arrange
      const a = -10.0;
      const b = -20.0;
      const expectedResult = a * b;

      // act
      final actualResult = calculator.mul(a, b);

      // assert
      expect(actualResult, expectedResult);
    });
    test('should return a * b when a is negative and b is positive.', () {
      // arrange
      const a = -10.0;
      const b = 20.0;
      const expectedResult = a * b;

      // act
      final actualResult = calculator.mul(a, b);

      // assert
      expect(actualResult, expectedResult);
    });
    test('should return a * b when a is positive and b is negative.', () {
      // arrange
      const a = 10.0;
      const b = -20.0;
      const expectedResult = a * b;

      // act
      final actualResult = calculator.mul(a, b);

      // assert
      expect(actualResult, expectedResult);
    });
  });
  group('tests for division', () {
    final calculator = Calculator();

    test('should return a / b when a and b are two positives.', () {
      // arrange
      const a = 10.0;
      const b = 20.0;
      const expectedResult = a / b;

      // act
      final actualResult = calculator.div(a, b);

      // assert
      expect(actualResult, expectedResult);
    });
    test('should return a / b when a and b are two negatives.', () {
      // arrange
      const a = -10.0;
      const b = -20.0;
      const expectedResult = a / b;

      // act
      final actualResult = calculator.div(a, b);

      // assert
      expect(actualResult, expectedResult);
    });
    test('should return a / b when a is negative and b is positive.', () {
      // arrange
      const a = -10.0;
      const b = 20.0;
      const expectedResult = a / b;

      // act
      final actualResult = calculator.div(a, b);

      // assert
      expect(actualResult, expectedResult);
    });
    test('should return a / b when a is  positive and b is negative.', () {
      // arrange
      const a = 10.0;
      const b = -20.0;
      const expectedResult = a / b;

      // act
      final actualResult = calculator.div(a, b);

      // assert
      expect(actualResult, expectedResult);
    });
    test('should return 0 when b is 0.', () {
      // arrange
      const a = 10.0;
      const b = 0.0;
      const expectedResult = 0;

      // act
      final actualResult = calculator.div(a, b);

      // assert
      expect(actualResult, expectedResult);
    });
  });
}
