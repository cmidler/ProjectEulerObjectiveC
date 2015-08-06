//
//  Number14.m
//  test
//
//  Created by Chase Midler on 8/5/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "Number14.h"

@implementation Number14

-(NSInteger) largestCollatzSequenceUnderStartingNumber:(NSInteger)number
{
    NSInteger largestSequence = 1;
    NSInteger startingNumber = 1;
    for(NSInteger i = 1; i < number; i++)
    {
        NSInteger seq = [self getCollatz:i];
        if( seq > largestSequence)
        {
            largestSequence = seq;
            startingNumber = i;
        }
        
    }
    
    return startingNumber;
}

-(NSInteger) getCollatz:(NSInteger) number
{
    NSInteger currentNumber = number;
    NSInteger count = 1;
    
    while(currentNumber!=1)
    {
        //odd
        if(currentNumber%2)
            currentNumber = 3*currentNumber +1;
        else//even
            currentNumber/=2;
        count++;
        
    }
    
    return count;
}

@end
