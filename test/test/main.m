//
//  main.m
//  test
//
//  Created by Chase Midler on 8/4/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "main.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        compute3And5* test1 = [[compute3And5 alloc] init];
        fibonacci* fib = [[fibonacci alloc] init];
        LargestPrimeFactor* lpf = [[LargestPrimeFactor alloc] init];
        NumberPalindrome* np = [[NumberPalindrome alloc] init];
        SmallestMultiple* sm = [[SmallestMultiple alloc] init];
        SumOfSquares* sos = [[SumOfSquares alloc] init];
        ParticularPrime* pp = [[ParticularPrime alloc]init];
        GreatestProduct* gp = [[GreatestProduct alloc]init];
        Number9* n9 = [[Number9 alloc]init];
        Number10* n10 = [[Number10 alloc]init];
        Number11* n11 = [[Number11 alloc]init];
        Number12* n12 = [[Number12 alloc]init];
        Number13* n13 = [[Number13 alloc] init];
        NSLog(@"Started tests...");
        
        /*NSLog(@"5 and 3 Sum is %d", [test1 computeSum]);
        NSLog(@"fib even sum is %ld", [fib evenFibonacciSum]);
        NSLog(@"largest prime factor is %ld", [lpf getLargestPrimeFactor:600851475143]);
        NSLog(@"number palindrome is %ld", [np findLargestPalindromeInDigits:3]);
        NSLog(@"smallest multiple is %ld", [sm getSmallestMultiple]);
        NSLog(@"difference in sum of squares and square of sums is %ld", [sos differenceInSums]);
        NSLog(@"10001st prime is %ld", [pp findPrime:10001]);
        NSLog(@"greatest product is %ld", [gp findProduct:13]);
        NSLog(@"Number 9 is %ld", [n9 findTriplet]);
        NSLog(@"Number 10 is %ld", [n10 sumOfPrimes:2000000]);
        NSLog(@"Number 11 is %ld", [n11 greatestProduct]);
        NSLog(@"Number 12 is %ld", [n12 triangleNumberForDivisors:500]);*/
        NSLog(@"Number 13 is %@", [n13 findFirstTenDigits]);
        
    }
    return 0;
}
