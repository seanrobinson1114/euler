/**
 * Special Pythagorean Triplet
 * 
 * A Pythagorean triplet is a set of three natural numbers, a<b<c, for which a^2 + b^2 = c^2
 * For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2
 * 
 * There exists exactly one Pythagorean triplet for which a + b + c = 1000
 * Find the product a*b*c 
 * 
 * @author seanmr
 */

void main() {
  print(calcPythagoreanTripletProduct(1000));
}

// Finds Pythagorean triplets for specific summation and returns product of all three values
int calcPythagoreanTripletProduct(int desired_summation) {
  bool found = false;
  int multiplier = 0;

  // Loop through until multiplier is found where (3n) + (4n) + (5n) = desired_summation
  for(int i = 1; i<100; ++i) {
    print(3*i + 4*i + 5*i);
    if((3*i + 4*i + 5*i) == desired_summation) {
      multiplier = i;
      found = true;
      print('true');
    }
  }

  return ((3*multiplier)*(4*multiplier)*(5*multiplier));
}



