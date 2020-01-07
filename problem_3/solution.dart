// Imports
import 'dart:math';

/**
 * Largest prime factor
 * The prime factors of 13195 are 5, 7, 13, and 29
 * 
 * What is the largest prime factor of the number 600851475143
 * 
 * @author seanmr
 */

main() {
  // Calculate the largest prime factor
  print(calcLargestPrimeFactor(600851475143));
}

// returns list of prime factors from starting value
List<int> findPrimeFactors(List<int> factors) {
  for(int i = 0; i < factors.length; ++i) {
    for(int j = 2; j < factors[i]; ++j) {
      // Check if number is factorable and re-call if factor found
      if(factors[i] % j == 0) {
        int first = j;
        int second = factors[i] ~/ j;

        return findPrimeFactors(new List.from([first, second]));
      }
    }
  }
  // list only contains prime factors
  return factors;
}

// Returns largest prime factor
int calcLargestPrimeFactor(int start_value) {
  List<int> prime_factors = findPrimeFactors(new List.from([start_value]));
  
  return prime_factors.reduce(max);
}