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
    NSString *combinedStuff = [_toBeRetreivedLater componentsJoinedByString:@"separator"];
    return combinedStuff;
}

@end
