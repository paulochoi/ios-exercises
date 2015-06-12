//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *finalString = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return finalString;
   }

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *returnString;
    
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        NSRange cheeseFullString = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        
        NSString *stringWithNoCheese = [cheeseName stringByReplacingCharactersInRange:cheeseFullString withString:@""];
        
        returnString = stringWithNoCheese;
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        returnString = cheeseName;
    }

    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */

    return returnString;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *finalString;
    
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        finalString = [NSString stringWithFormat:@"%ld cheese", cheeseCount];
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        finalString = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return finalString;
}

@end
