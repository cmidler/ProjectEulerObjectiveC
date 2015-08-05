//
//  compute3And5.m
//  test
//
//  Created by Chase Midler on 8/4/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "compute3And5.h"

@implementation compute3And5


-(int) computeSum
{
    int k = 999;
    
    int threeTotal = k/3;
    int fiveTotal = k/5;
    
    int sum = 0;
    
    for(int i = 1; i <= threeTotal; i++)
    {
        int newThreeTotal = i*3;
        if(newThreeTotal%5)
            sum+=newThreeTotal;
        
        if(i<=fiveTotal)
        {
            sum+= i*5;
            
        }
    }
    
    
    return sum;
}


@end
