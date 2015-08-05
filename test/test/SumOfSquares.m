//
//  SumOfSquares.m
//  test
//
//  Created by Chase Midler on 8/4/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "SumOfSquares.h"

@implementation SumOfSquares

-(long) differenceInSums
{
    long sumOfSquares = 0;
    long squareOfSums = 0;
    
    for(int i = 1; i<=100; i++)
    {
        sumOfSquares += pow(i,2);
        squareOfSums +=i;
    }
    
    squareOfSums = pow(squareOfSums,2);
    
    long answer = sumOfSquares-squareOfSums;
    if(answer < 0)
        answer*=-1;
    
    return answer;
}

@end
