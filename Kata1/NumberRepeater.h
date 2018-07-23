//
//  NumberRepeater.h
//  Kata1
//
//  Created by Jamie on 2018-07-20.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NumberRepeater : NSObject
@property NSArray *toBeRetreivedLater;

- (instancetype)initWithNumbers:(NSArray *)numbers;

- (NSString*)process;

@end
