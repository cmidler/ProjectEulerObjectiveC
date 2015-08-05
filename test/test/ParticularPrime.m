//
//  ParticularPrime.m
//  test
//
//  Created by Chase Midler on 8/5/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "ParticularPrime.h"

@implementation ParticularPrime


-(long) findPrime:(long) number
{
    if(number <1)
        return 0;
    else if (number == 1)
        return 2;
    
    long totalFound = 1;
    long i = 3;
 
    //loop through and check for primes
    for(; 1; i+=2)
    {
        
        if([self isPrime:i])
            totalFound++;
        
        if(totalFound==number) break;
    }
    
    return i;
}

-(BOOL) isPrime:(long)number
{
    if(!(number%2)) return false;
    
    for(long i = 3; i<number; i+=2)
    {
        if(!(number%i))
            return false;
    }
    return true;
}

@end
