//
//  Number10.m
//  test
//
//  Created by Chase Midler on 8/5/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "Number10.h"

@implementation Number10

-(long) sumOfPrimes: (long) number
{
    
    NSMutableArray* sieve = [[NSMutableArray alloc] initWithCapacity:number];
    NSMutableArray* primes = [[NSMutableArray alloc] init];
    
    NSNumber* zero = [NSNumber numberWithInt:0];
    for(int i = 0; i < number; i++)
        [sieve addObject:zero];
    
    for(long i = 2; i< number; i++)
    {
        int num = ((NSNumber*)[sieve objectAtIndex:i]).intValue;
        //prime
        if(!num)
        {
            //add to prime list
            [primes addObject:[NSNumber numberWithLong:i] ];
            
            //now loop through and mark all multiple (starting at square) as not prime
            NSNumber* one = [NSNumber numberWithInt:1];
            for(long j = i*i; j< number; j+=i)
                [sieve setObject:one atIndexedSubscript:j];
            
        }
    }
    
    long sum = 0;
    for(NSNumber* num in primes)
        sum+= num.intValue;
    
    return sum;
}


@end
