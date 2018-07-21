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
    
    // this loop gets me the multiple number
    int row =0;
    int column = 1;
    NSMutableArray *multiplierArray = [NSMutableArray new];
    for (NSArray *count in _toBeRetreivedLater)
    {
        //NSLog (@"%@", _toBeRetreivedLater[row][column]); //proves where the single number is
        NSNumber *multiplier = _toBeRetreivedLater[row][column]; //loads one object into variable
        //NSInteger intMultiplier = [multiplier integerValue]; // converts one object to comparable number for for loop
        [multiplierArray addObject:multiplier];//adds the one number to the new array
        row = row+1;
    }
    
    //NSString *whatsInTheMultiplierArray = [multiplierArray componentsJoinedByString:@""];
    //NSLog (@"%@", whatsInTheMultiplierArray);
    row=0;
    column=0;
    
    
    // this for loop gets me the display number
    for (NSArray *count in _toBeRetreivedLater)
    {
        //NSLog (@"%@", _toBeRetreivedLater[row][column]);  //proves the display number
        NSNumber *displayNumber = _toBeRetreivedLater[row][column]; //pulls display numbers out
        // load the display objects into an separate array
         NSMutableArray *displayArray = [NSMutableArray new]; //creates array
        
        
        // pull the first number out of the array and use it for the loop
        //int next = 0;
        NSNumber *multiplier2 = multiplierArray[row];
        NSInteger intMultiplier = [multiplier2 integerValue];
        for (int i = 0; i < intMultiplier; i++)
            //for (NSNumber *count in multiplierArray) //get intMuliplier from other array
            {
                
               //load the displayNumber into an mutable array as objects
                [displayArray addObject:displayNumber];
            }
        row = row+1;
        
         NSString *whatsInTheDisplayArray = [displayArray componentsJoinedByString:@""];
         NSLog (@"%@", whatsInTheDisplayArray);
    }
        

    
//    for (NSArray *count2 in _toBeRetreivedLater)
//    {
//        NSLog (@"%@", _toBeRetreivedLater[row][column]);
//        column = column+1;
//    }
    //NSNumber *multiplier = _toBeRetreivedLater[row][column];
   // NSString *whatsInTheArray = [_toBeRetreivedLater componentsJoinedByString:@""];
   // NSLog (@"%@", whatsInTheArray);
    
    
    //For some reason I have to then turn it into an NSInteger for use
    //NSInteger intMultiplier = [multiplier integerValue];
   
    
    // Break out the display number for adding to new array a certain number of times
   // NSNumber *displayNumber = _toBeRetreivedLater[0][0];
   
    //create the new array for only the display number
   // NSMutableArray *displayArray = [NSMutableArray new];
    
    
//    for (int i = 0; i < intMultiplier; i++)
//    {
//       //load the displayNumber into an mutable array as objects
//        [displayArray addObject:displayNumber];
//    }
//
//    // print the array as a string
//    NSString *printedResults = [displayArray componentsJoinedByString:@""];
//    NSLog (@"%@", printedResults);
    

    return @"";
}

@end
// Ok what does this have to do?
    
    
