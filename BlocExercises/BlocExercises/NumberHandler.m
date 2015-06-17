//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
    int returnInt = [number intValue] * 2;
    return [NSNumber numberWithInt:returnInt];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *returnArray = [NSMutableArray new];
    
    if (number < otherNumber) {
        for (NSInteger i = number ; i <= otherNumber ; i++ ) {
            [returnArray addObject:[NSNumber numberWithInteger:i]];
        }
        
    } else {
        for (NSInteger i = otherNumber ; i <= number ; i-- ){
            [returnArray addObject:[NSNumber numberWithInteger:i]];
        }
    }
    return returnArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSInteger lowestNumber = [arrayOfNumbers[0] integerValue];
    
    for (NSNumber *value in arrayOfNumbers){
        if (lowestNumber > [value integerValue]) {
            lowestNumber = [value integerValue];
        }
    }
    return lowestNumber;
}

@end
