/**
 * Summation of Primes
 * 
 * The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17
 * 
 * Find the sum of all the primes below two million
 * 
 * @author seanmr
 */

const ceiling = 2000000;

// check if number is prime
isPrime = (val) => {
    // check for 1 (special case)
    if (val == 1)
        return false;

    // check if val is a prime
    else {
        for (let i = 3; i <= Math.sqrt(val); i+=2) {
            if (val % i == 0)
                return false;
        }
        return true;
    }
};

// calculate sum of primes to ceiling
primes = new Array(ceiling).fill(1).map((val, index) => val + index).filter(val => (val == 2) || (val % 2)).filter(val => isPrime(val)).reduce((accumulator, current_value) => accumulator + current_value, 0);

console.log(primes);