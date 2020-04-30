/**
 * 10001st Prime
 * 
 * By listing the first six prime numbers: 2,3,5,7,11,13
 * We can see that the sixth prime is 13
 * 
 * What is the 10001st prime number
 * 
 * @author seanmr 
 */

void main() {
  print(findSpecifiedPrime(10001));
}

// Returns nth prime
int findSpecifiedPrime(int nth) {
  List<int> primes = generateListOfPrimes(nth);

  return primes[nth - 1];
}

// Generates list of primes to the nth
List<int> generateListOfPrimes(int nth) {
  List<int> primes = new List<int>();

  // Generate all primes to the nth
  for(int i = 2; primes.length < nth; ++i) {
    if(determineIfPrime(i))
      primes.add(i);
  }

  return primes;
}

// Determine if prime number
bool determineIfPrime(int prime_check) {
  for(int i = 2; i < prime_check; ++i) {
    if(prime_check % i == 0 )
      // Number isn't prime
      return false;
  }
  return true;
}

