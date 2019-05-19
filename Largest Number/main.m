//
//  main.m
//  Largest Number
//
//  Created by Cameron Mcleod on 2019-05-19.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayUtility.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        ArrayUtility *myUtility = [[ArrayUtility alloc] init];
        
        NSArray *array1 = @[@11, @3, @4, @1, @9, @15, @6];
        
        NSLog(@"The largest number in array is: %@", [myUtility largestNumber: array1]);
        NSLog(@"The smallest number in array is: %@", [myUtility smallestNumber: array1]);
        NSLog(@"The median number in array is: %@", [myUtility medianNumber: array1]);
        
    }
    return 0;
}
