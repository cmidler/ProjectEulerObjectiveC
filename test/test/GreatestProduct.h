//
//  GreatestProduct.h
//  test
//
//  Created by Chase Midler on 8/5/15.
//  Copyright (c) 2015 midler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GreatestProduct : NSObject

@property (nonatomic, readwrite) long largestProduct;
@property (strong, nonatomic) NSString* string;

-(long) findProduct:(long) number;
@end
