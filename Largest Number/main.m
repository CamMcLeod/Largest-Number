//
//  main.m
//  Largest Number
//
//  Created by Cameron Mcleod on 2019-05-19.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>

int findLargest(NSArray * numbers)
{
    int largestNumber = 0;
    for (NSString * file in numbers) {
        int thisNumber = [file intValue];
        largestNumber = thisNumber > largestNumber ? thisNumber : largestNumber;
    }
    return largestNumber;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *array1 = @[@1, @2, @3, @4, @5, @6];
        
        NSLog(@"The largest number in array is: %d", findLargest(array1));
        
        NSArray *array2 = @[@3, @7, @6, @8];
        
        NSLog(@"The largest number in array is: %d", findLargest(array2));
        
        NSArray *array3 = @[@44, @5, @6];
        
        NSLog(@"The largest number in array is: %d", findLargest(array3));
    }
    return 0;
}
