//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer


- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    self.aRememberLater = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    self.aCopyLater = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.cgRememberLater = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    if (self.aRememberLater != nil){
        return self.aRememberLater;
    } else {
        return nil;
    }
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    if (self.aCopyLater != nil){
        return [self.aCopyLater mutableCopy];
    } else {
        return nil;
    }
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    if (isnan(self.cgRememberLater)) {
        return NSNotFound;
    } else {
        return self.cgRememberLater;
    }
    }

@end