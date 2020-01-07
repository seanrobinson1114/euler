// Imports
import 'dart:math';

/**
 * Sum square difference
 * The sum of the squares of the first ten natural numbers is 385
 * The square of the sum of the first ten natural numbers is 3025
 * Hence the difference between the sum of the squares of the first ten natural numbers
 * and the square of the sum is 3025 - 385 = 2640
 * 
 * Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum
 * 
 * @author seanmr
 */

main() {
  List<int> naturals = new List<int>.generate(100, (int index) => index + 1);

  int square_sum = calcSquareofSum(naturals);
  int sum_square = calcSumOfSquares(naturals);

  print(square_sum - sum_square);
}

// Calculates the sum of the squares of inputs
int calcSumOfSquares(List<int> inputs) {
  int total = 0;

  // Square each input and add to total
  for(int i = 0; i < inputs.length; ++i)
    total += pow(inputs[i], 2);

  return total;
}

// Calculate the square of the sums of inputs
int calcSquareofSum(List<int> inputs) {
  int total = 0;

  // Add each input then return square
  for(int i = 0; i < inputs.length; ++i)
    total += inputs[i];

  return pow(total, 2);
}

