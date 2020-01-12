/**
 * Multiples of 3 and 5
 * 
 * If we list all the natural numbers below 10 that are multiples of 3 or 5, 
 * we get 3, 5, 6,and 9
 * The sum of these multiples is 23
 * 
 * Find the sum of all the multiples of 3 or 5 below 1000
 * 
 * @author seanmr
 */
main() {
  // Calculate sums for 3 and 5
  int threeSum = findMultiplesSum(3, 1000, 5);
  int fiveSum = findMultiplesSum(5, 1000);

  print(threeSum);
  print(fiveSum);

  print('\n');
  print(threeSum + fiveSum);
}

// Finds all multiples of number
int findMultiplesSum(int start_value, int ceiling, [int duplicate_base = 0]) {
  int current_multiple = start_value;
  List<int> multiples = new List<int>();

  // Keep looping until the current multiple >= ceiling
  while (current_multiple < ceiling) {
    multiples.add(current_multiple);
    current_multiple += start_value;
  }

  // Check if multiples should be removed
  if (duplicate_base != 0 )
    return removeDuplicates(multiples, duplicate_base);

  return multiples.fold(0, (previous, current) => previous + current);
}
  

// Removes duplicate multiples of base and return sum
int removeDuplicates(List<int> multiples, int duplicate_base) {

  multiples.removeWhere((multiple) => multiple % duplicate_base == 0);

  return multiples.fold(0, (previous, current) => previous + current);
}