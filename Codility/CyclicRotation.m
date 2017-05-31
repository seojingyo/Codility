//
//  CyclicRotation.m
//  Codility
//
//  Created by 122316 on 2017. 5. 31..
//  Copyright © 2017년 seojingyo. All rights reserved.
//

#import "CyclicRotation.h"

@implementation CyclicRotation

+ (NSMutableArray *) solution:(NSMutableArray *)A index:(int)K{
    NSInteger count = [A count];
    NSMutableArray *resultArray = [[NSMutableArray alloc]initWithCapacity:count];
    for(int i = 0; i< count; i++) [resultArray addObject: [NSNull null]];
    
    for (int i = 0; i < count; i ++){
        NSInteger index = ( i + K ) % count;
        [resultArray replaceObjectAtIndex:index withObject:A[i]];
    }
    return resultArray;
}

@end
