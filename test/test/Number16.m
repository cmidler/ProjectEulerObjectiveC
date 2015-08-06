//
//  Number16.m
//  test
//
//  Created by Chase Midler on 8/5/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "Number16.h"

@implementation Number16


//I took the following solution from http://www.quora.com/How-do-you-find-the-sum-of-the-digits-of-2-1000
//If I want to take the time I might give a proper objective c solution as opposed to the c solution here

//Upon further review this doesn't work on my machine.  Will go back at some point and rework this solution.
//The key here will be to keep the digits in an array and handle overflow when you convert the 2^1000
//into its large number
-(int) highNumberAddition
{
    int ar[500];
    int sum =0;
    ar[0]=1;
    for(int j=1;j<500;j++)
        ar[j]=0;
    for(int i=1;i<1001;i++)
    {
        ar[0]=2*ar[0];
        for(int k=1;k<500;k++)
            ar[k]=2*ar[k] + ar[k-1]/10;
        for(int j=0;j<500;j++)
            ar[j]=ar[j]%10;
    }
    for(int i=0;i<500;i++)
        sum = sum + ar[i];
    
    return sum;
}

@end
