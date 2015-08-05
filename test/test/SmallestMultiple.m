//
//  SmallestMultiple.m
//  test
//
//  Created by Chase Midler on 8/4/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "SmallestMultiple.h"

@implementation SmallestMultiple

-(long) getSmallestMultiple
{
    
    for(long i = 2520; 1; i++)
    {
        long multiple = 20*i;
        int j = 3;
        for (; j<20; j++)
        {
            if(multiple%j)
                break;
        }
        if(j==20)
            return multiple;
    }
    return 0;
}
@end
