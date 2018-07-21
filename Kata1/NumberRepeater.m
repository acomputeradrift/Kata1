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
    
    //need fast enumeration to do this for all the items in the array
    
    
    //Unpackage the multiplier for the for loop as an NSNumber
    
   
    int row =0;
    NSMutableArray *multiplierArray = [NSMutableArray new];
    
     // this loop gets me the multiple number
    for (NSArray *count in _toBeRetreivedLater)
    {
        NSNumber *multiplier = _toBeRetreivedLater[row][1]; //loads one object into variable
        [multiplierArray addObject:multiplier];//adds the one number to the new array
        row = row+1;
    }
    
    
    row=0;
    NSMutableArray *displayArray = [NSMutableArray new]; //creates array

    // this for loop gets me the display number
    for (NSArray *count in _toBeRetreivedLater)
    {
        //NSLog (@"%@", _toBeRetreivedLater[row][column]);  //proves the display number
        NSNumber *displayNumber = _toBeRetreivedLater[row][0]; //pulls display numbers out
        //NSMutableArray *displayArray = [NSMutableArray new]; //creates array
        NSNumber *multiplier2 = multiplierArray[row];// pull the first number out of the array and use it for the loop
        NSInteger intMultiplier = [multiplier2 integerValue];
        if (row >= 1)
        {
            [displayArray addObject:@","];
        }
       
        for (int i = 0; i < intMultiplier; i++) //run this loop as many times as the value of the multiplier
            {
                [displayArray addObject:displayNumber];//load the displayNumber into an mutable array as objects
                
            }
        row = row+1;
       
    }
    NSLog (@"%@", [displayArray componentsJoinedByString:@""]);
    return @"";
}

@end

    
    
