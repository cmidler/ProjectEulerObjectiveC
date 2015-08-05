//
//  NumberPalindrome.m
//  test
//
//  Created by Chase Midler on 8/4/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import "NumberPalindrome.h"

@implementation NumberPalindrome

-(long) findLargestPalindromeInDigits:(int) number
{
    NSMutableArray* palindromes = [[NSMutableArray alloc] init];
    
    long largestNumber = 0;
    for(int i = 0; i < number; i++)
    {
        largestNumber+= (9* pow(10,i));
        NSLog(@"largest number is %ld", largestNumber);
    }
    
    //NSLog(@"largest number is %d", largestNumber);
    
    for(int i = 0; i <largestNumber; i++)
    {
        for(int j = 0; j < largestNumber; j++)
        {
            
            if([self isPalindrome:j*i])
            {
                NSNumber* pal = [NSNumber numberWithLong:j*i];
                if(![palindromes containsObject:pal])
                    [palindromes addObject:pal];
            }
        }
    }
    
    
    long max = 0;
    for(NSNumber* num in palindromes)
    {
        if(num.longValue> max)
            max = num.longValue;
    }
    return max;
}

-(bool) isPalindrome:(long)number
{
    NSString* strNum = [NSString stringWithFormat:@"%ld", number];
    
    for(int i = 0; i < strNum.length; i++)
    {
        if([strNum characterAtIndex:i] != [strNum characterAtIndex:strNum.length-i-1])
            return false;
    }
    
    return true;
}

@end
