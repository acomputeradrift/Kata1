//
//  NumberRepeater.m
//  Kata1
//
//  Created by Jamie on 2018-07-20.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "NumberRepeater.h"

@implementation NumberRepeater

- (instancetype)initWithNumbers:(NSArray *)numbers
{
    //hopefully this loads the property with the array
    
    self.toBeRetreivedLater = numbers;
    return self;
}

- (NSString *)process
{
    //Unpackage the array contents into a string
    NSNumber *multiplier = _toBeRetreivedLater[0][1];
    NSInteger intMultiplier = [multiplier integerValue];
    NSNumber *displayNumber = _toBeRetreivedLater[0][0];
    NSString *stringFromObject = [NSString stringWithFormat:@"%@", displayNumber];
    //NSInteger intDisplayNumber = [displayNumber integerValue];
    //NSLog(@"%ld", (long)value);
    for (int i = 0; i < intMultiplier; i++)
    {
        
       
        NSString *smashedTogether = [stringFromObject stringByAppendingString:stringFromObject];
        
    }
    NSLog(@"%@", smashedTogether);
    return @"Test";
}

@end
