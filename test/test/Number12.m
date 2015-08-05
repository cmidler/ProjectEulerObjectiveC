//
//  Number12.m
//  test
//
//  Created by Chase Midler on 8/5/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "Number12.h"

@implementation Number12

-(NSInteger) triangleNumberForDivisors:(NSInteger) divisors
{
    //base cases
    if(divisors<1) return 0;
    else if(divisors == 1) return 1;
    
    NSInteger lowestTriangleNumber = 1;
    
    for(NSInteger i = 2; 1; lowestTriangleNumber+=i, i++)
    {
        NSInteger numberOfDivisors = [self getNumberOfDivisors:lowestTriangleNumber];
        
        if(numberOfDivisors>divisors)
            return lowestTriangleNumber;
    }
    
    return 0;
}



-(NSInteger) getNumberOfDivisors:(NSInteger) number
{
    NSInteger numberOfDivisors = 0;
    NSInteger limit = sqrt(number);
    
    for(NSInteger i =1; i<limit; i++)
    {
        //can be evenly divided
        if(!(number%i))
        {
            numberOfDivisors++;
            //the division is not a square so add the other divisor as well
            if(number/i != i)
                numberOfDivisors++;
        }
        
    }
    
    return numberOfDivisors;
}
@end
