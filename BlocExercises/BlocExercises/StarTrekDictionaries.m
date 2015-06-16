//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    if (characterDictionary[@"favorite drink"] != nil) {
        return characterDictionary[@"favorite drink"];
    } else {
        return nil;
    }
    
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    NSMutableArray *returnArray = [NSMutableArray new];
    
    for (NSDictionary *drinks in charactersArray) {
        NSString *dictDrinks = drinks[@"favorite drink"];
        [returnArray addObject:dictDrinks];
    }
    
    return returnArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *characterDictionaryMutable = [characterDictionary mutableCopy];
    
    [characterDictionaryMutable setObject:@"A great quote" forKey:@"quote"];
    
    return characterDictionaryMutable;
}

@end
