//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    /* WORK HERE */
    BOOL returnValue;
    
    if ([string1 isEqualToString:string2]) {
        returnValue = YES;
    } else {
        returnValue = NO;
    }
    
    return (returnValue);
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    /* WORK HERE */
    BOOL returnValue;
    
    if ([number1 isEqualToNumber:number2]){
        returnValue = YES;
    } else{
        returnValue = NO;
    }
    
    return (returnValue);
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    /* WORK HERE */
    BOOL returnValue;
    if (integer1 > integer2 ){
        returnValue = YES;
    } else {
        returnValue = NO;
    }
    
    return returnValue;
}

@end
