//
//  fibonacci.m
//  test
//
//  Created by Chase Midler on 8/4/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "fibonacci.h"



@implementation fibonacci


-(long) evenFibonacciSum
{
    long currentValue = 2;
    long previousValue = 1;
    long sum = 0;
    
    for(; currentValue<MAX_FIB;)
    {
        if(!(currentValue%2))
        {
            sum+=currentValue;
        }
        
        long tmp = currentValue+previousValue;
        previousValue = currentValue;
        currentValue = tmp;
    }
    
    return sum;
}


@end
