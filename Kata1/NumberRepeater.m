//
//  NumberRepeater.m
//  Kata1
//
//  Created by Jamie on 2018-07-20.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "NumberRepeater.h"

@implementation NumberRepeater

- (instancetype)initWithNumbers:(NSArray *)numbers //hopefully this loads the property with the array
{
    self.toBeRetreivedLater = numbers;
    return self;
}

- (NSString*)process
{
    //--------------------------------------
    int row =0;
    NSMutableArray *multiplierArray = [NSMutableArray new];
    
    
    for (NSArray *count in _toBeRetreivedLater) // this loop gets me the multiple number only from the 2d array
    {
        NSNumber *multiplierNumber = _toBeRetreivedLater[row][1]; //pulls one multiplierNumber object out each time as NSNumber
        [multiplierArray addObject:multiplierNumber];//adds the one multiplierNumber as an object to the new array in the last position
        row = row+1; //repeats the loop for the next index in the 2d array
    }
    
     //---------------------------------------
    
    row=0;
    NSMutableArray *displayArray = [NSMutableArray new]; //creates mutable array

    for (NSArray *count in _toBeRetreivedLater)  // this loop gets me the display number only from the 2d array
    {
        NSNumber *displayNumber = _toBeRetreivedLater[row][0]; //pulls one displayNumber object out each time as NSNumber
        NSInteger intMultiplier = [multiplierArray[row] integerValue];// pull the first number out of the new array and uses it for the loop as an NSInteger
        
        if (row >= 1) //placement of the comma
        {
            [displayArray addObject:@","];
        }
        for (int i = 0; i < intMultiplier; i++) //run this loop as many times as the value of the multiplier you got from the first for in loop
            {
                [displayArray addObject:displayNumber];//adds the one Displaynumber as an object to the new array in the last position
            }
        row = row+1;//repeats the loop for the next index in the 2d array
    }
    NSString *returnString = [displayArray componentsJoinedByString:@""]; //adds the contents of the displayArray to an NSString
    return returnString;
}

@end

    
    
