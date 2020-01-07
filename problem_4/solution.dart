/**
 * Largest palindrome product
 * A palindromic number reads the same both ways
 * The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99
 * 
 * Find the largest palindrome made from the product of two 3-digit numbers
 * 
 * @author seanmr
 */

main() {
  print(findLargestPalindromefromThreeDigit(999, 999));
}

// Finds the largest palindrome from two starting values
int findLargestPalindromefromThreeDigit(int value_1, int value_2) {
  int largest_palindrome = -1;

  // Loop through all 3 digit values and check if product is palindrome
  for(int i = value_1; i > 99; --i) {
    for(int j = value_2; j > 99; --j) {
      int check_value = i*j;

      if(isPalindrome(check_value) && (check_value > largest_palindrome)) {
        largest_palindrome = check_value;
        break;
      }
    } 
  }
  return largest_palindrome;
}

// Checks if number is a palindrome
bool isPalindrome(int value) {
  String value_string = value.toString();
  
  // Loop through string checking opposite indexes for different values
  for(int i = 0; i < value_string.length / 2; ++i) {
    if(value_string[i] != value_string[value_string.length - 1 - i])
      return false;
  }
  return true;
}