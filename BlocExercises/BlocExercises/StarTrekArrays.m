//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    //convert to mutable array

    NSArray *newArray = [characterArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    return newArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSPredicate *findPredicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    
    NSArray *newArray = [characterArray filteredArrayUsingPredicate:findPredicate];
    
    BOOL flag = NO;
    
    if ([newArray count] > 0 ){
        flag = YES;
    }
    
    return flag;
}

@end
