//
//  LargestPrimeFactor.m
//  test
//
//  Created by Chase Midler on 8/4/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "LargestPrimeFactor.h"


@implementation LargestPrimeFactor

-(long) getLargestPrimeFactor: (long) number
{
    long i = 2;
    for(; i<number-1; i++)
    {
        //NSLog(@"i = %ld", i);
        if(!(number%i))
        {
            long factor = number/i;
            if([self isPrime:factor])
            {
                return factor;
            }
        }
    }
    
    NSLog(@"returned 0");
    //0 if there isn't a prime factor
    return 0;
}

-(bool) isPrime:(long) number
{
    
    if(number <2) return false;
    if (number == 2) return true;
    //get rid of evens besides 2
    if(!(number%2))
        return false;
    
    for(int i = 3; i<number; i++)
    {
        if(!(number%i))
            return false;
    }
    
    return true;
}

@end
