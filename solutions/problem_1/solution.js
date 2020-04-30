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

// create array from 0 to 999
range = new Array(999).fill(1).map((val, index) => val + index);

// filter out values that aren't multiples of 3 or 5
multiples = range.filter(val => !(val % 3) || !(val % 5));

// print sum of all multiples
console.log(multiples.reduce((accumulator, current_value) => accumulator + current_value, 0));