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
    //Unpackage the multiplier for the for loop as an NSNumber
    NSNumber *multiplier = _toBeRetreivedLater[0][1];
    //For some reason I have to turn it into an NSInteger for use
    NSInteger intMultiplier = [multiplier integerValue];
    // Break out the display number for adding to new array a certain number of times
    NSNumber *displayNumber = _toBeRetreivedLater[0][0];

    
    NSMutableArray *displayArray = [NSMutableArray new];
    for (int i = 0; i < intMultiplier; i++)
    {
       //load the displayNumber into an mutable array as objects
        [displayArray addObject:displayNumber];
    }
    // print the array as a string
    NSString *printedResults = [displayArray componentsJoinedByString:@""];
    NSLog (@"%@", printedResults);
    return @"Test";
}

@end
