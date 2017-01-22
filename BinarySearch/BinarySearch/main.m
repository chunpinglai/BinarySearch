//
//  main.m
//  BinarySearch
//
//  Created by AbbyLai on 2017/1/22.
//  Copyright © 2017年 AbbyLai. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8"];
        int index = search(8,array);
        NSLog(@"index = %d",index);
    }
    return 0;
}

int search (int inputNumber, NSArray *inputArray) {
    int last = (int)inputArray.count -1;
    int first = 0;
    return searchFirst(first, last, inputArray, inputNumber);
}

int searchFirst (int first, int last, NSArray *inputArray, int searchItem) {
    int index = 0.5 *(last + first);
    int currentNumber = [[inputArray objectAtIndex:index] intValue];
    
    if (last < first)
        return -1;//not found
    
    if (currentNumber == searchItem) {
        return index;
    }
    else {
        if (currentNumber < searchItem) {
            first = index + 1;
            return searchFirst(first, last, inputArray, searchItem);
        }
        else {
            last = index - 1;
            return searchFirst(first, last, inputArray, searchItem);
        }
    }
}
