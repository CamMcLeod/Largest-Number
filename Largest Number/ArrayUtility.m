//
//  ArrayUtility.m
//  Largest Number
//
//  Created by Cameron Mcleod on 2019-05-19.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility

-(NSNumber *) largestNumber: (NSArray *) array {
    
    int bigNumber = 0;
    
    for (NSNumber *file in array) {
        int thisNumber = [file intValue];
        bigNumber = thisNumber > bigNumber ? thisNumber : bigNumber;
    }

    return [NSNumber numberWithInt:bigNumber];
}

-(NSNumber *) smallestNumber: (NSArray *) array {
    
    int smallNumber = [[array objectAtIndex: 0] intValue];
    
    for (NSNumber *file in array) {
        int thisNumber = [file intValue];
        smallNumber = thisNumber < smallNumber ? thisNumber : smallNumber;
    }
    
    return [NSNumber numberWithInt:smallNumber];
}

-(NSNumber *) medianNumber: (NSArray *) array {
    
    NSMutableArray * sortedArray = [[NSMutableArray alloc] initWithArray: array];
    int arrayLength = (int)[array count];

    for (int i = 0; i < arrayLength; i++){
        NSNumber * x = [sortedArray objectAtIndex: i];
        int j = i - 1;
        while (j >= 0 && [[sortedArray objectAtIndex: j] intValue] > [x intValue]) {
            [sortedArray setObject:[sortedArray objectAtIndex: j] atIndexedSubscript: j + 1];
            j = j - 1;
        }
        [sortedArray setObject: x atIndexedSubscript: j + 1];
    }
    
    int medAddress = arrayLength/2 ;
    
    return [sortedArray objectAtIndex: medAddress];
}

@end
