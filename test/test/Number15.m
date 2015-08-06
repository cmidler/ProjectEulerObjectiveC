//
//  Number15.m
//  test
//
//  Created by Chase Midler on 8/5/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "Number15.h"

@implementation Number15

//this is just a trick with pascal's triangle and combinatorics.
//as a hint look at how many ways you can reach and early edge and think about why that is

-(NSInteger) latticePath
{
    //40 choose 20 (n!/(k!(n-k)!)
    
    /*  40 factorial is massive, so just simplify above
    //  one of the 20! kills off the 20*19*18..*2*1 part
    //  This leaves us with 40*39...*21/20!
    //  We can simply this by making it just the odd numbers
    //  multiplied together multiplied by 2^10 (for the double
    //  of the even numbers divided by 10! (which is much more 
    //  manageable)
    */
    
    /*
    NSInteger top = [self computeFactorial:40];
    NSInteger bottomFirst = [self computeFactorial:20];
    NSInteger bottomSecond = bottomFirst; //40-20 = 20 again;
    NSLog(@"top is %ld, bottom is %ld", top, bottomFirst);
    return top/(bottomFirst*bottomSecond);*/
    
    NSInteger tenFactorial = [self computeFactorial:10];
    NSInteger top = pow(2, 10)*39*37*35*33*31*29*27*25*23*21;
    return top/tenFactorial;
    
}

-(NSInteger) computeFactorial:(NSInteger) number
{
    NSInteger factorial = 1;
    for(NSInteger i = number; i>1; i--)
        factorial*=i;
    
    return factorial;
}

@end
