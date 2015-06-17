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
    NSMutableArray *mutableArray = [NSMutableArray arrayWithObjects:characterArray, nil];
    
    NSLog(@"first array is %@", mutableArray);
    
    
    NSMutableArray *mutableArray2 = [NSMutableArray arrayWithArray:characterArray];
    
    NSLog(@"second array is %@", mutableArray2);
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [mutableArray2 sortUsingDescriptors:(@[sortDescriptor])];
    
    //convert back to regular array
    NSArray *returnArray = [mutableArray2 copy];
    
    NSLog(@"==============%@", mutableArray);
    
    return returnArray;
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
