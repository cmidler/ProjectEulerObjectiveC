//
//  Number9.m
//  test
//
//  Created by Chase Midler on 8/5/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "Number9.h"

@implementation Number9

-(long) findTriplet
{
    for(int a = 1; a<333; a++)
    {
        for(int b = a+1; b<666; b++)
        {
            for(int c = b+1; c<1000; c++)
            {
                
                //check if added together they are 1000 or break if over 1000
                if(a+b+c == 1000)
                {
                    if([self isPathTrip:a and:b and:c])
                        return a*b*c;
                }
                else if (a+b+c > 1000)
                    break;
                
            }
        }
    }
        
    
    return 0;
}

-(BOOL) isPathTrip:(int) a and:(int) b and:(int) c
{
    if((a*a + b*b) == (c*c))
        return true;
    return false;
}


@end
