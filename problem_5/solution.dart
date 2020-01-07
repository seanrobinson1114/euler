/**
 * Smallest multiple
 * 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder
 * What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20
 * 
 * @author seanmr
 */

main() {
  List<int> divisibles = new List<int>.from([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]);

  print(findSmallestEvenlyDivisiblePositiveNumber(20, divisibles));
}

// Finds the smallest evenly divisible positive number
int findSmallestEvenlyDivisiblePositiveNumber(int base, List<int> divisibles) {
  // Calculate multiple of base and see if evenly divisible by all divisibles
  for(int i = 1; i > 0; ++i) {
    int base_multiple = base*i;

    if(divisibles.every((divisible) => base_multiple % divisible == 0))
      return base_multiple;
  }
  return -1;
}