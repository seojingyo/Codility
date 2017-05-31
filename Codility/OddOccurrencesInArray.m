//
//  OddOccurrencesInArray.m
//  Codility
//
//  Created by 122316 on 2017. 5. 31..
//  Copyright © 2017년 seojingyo. All rights reserved.
//

#import "OddOccurrencesInArray.h"

@implementation OddOccurrencesInArray

+(int)solution:(NSMutableArray *)A {
    int result = 0;
    NSInteger count = [A count];
    
    for (int i = 0 ; i < count ; i++){
        int value = [A[i] intValue];
        result = result ^ value;
    }
    return result;
}

@end
