//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSMutableString *returnString = [[NSMutableString alloc] init];
    
    if (number < otherNumber) {
        for (NSInteger i = number ; i <= otherNumber; i++) {
            [returnString appendString: [NSString stringWithFormat:@"%ld",(long)i]];

        }
    } else if (number > otherNumber) {
        for (NSInteger i = otherNumber ; i <= number; i++) {
            [returnString appendString: [NSString stringWithFormat:@"%ld",(long)i]];
            
        }
    } else if (number == otherNumber){
        [returnString appendString: [NSString stringWithFormat:@"%ld",(long)number]];
    }
    NSLog(@"===========%@",returnString);
    return returnString;
}

@end
