//
//  MissingInteger.m
//  Codility
//
//  Created by 122316 on 2017. 6. 9..
//  Copyright © 2017년 seojingyo. All rights reserved.
//
/*
 Write a function:
 
 class Solution { public int solution(int[] A); }
 
 that, given a non-empty zero-indexed array A of N integers, returns the minimal positive integer (greater than 0) that does not occur in A.
 
 For example, given:
 
 A[0] = 1
 A[1] = 3
 A[2] = 6
 A[3] = 4
 A[4] = 1
 A[5] = 2
 the function should return 5.
 
 Assume that:
 
 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [−2,147,483,648..2,147,483,647].
 Complexity:
 
 expected worst-case time complexity is O(N);
 expected worst-case space complexity is O(N), beyond input storage (not counting the storage required for input arguments).
 Elements of input arrays can be modified.
 */

#import "MissingInteger.h"

@implementation MissingInteger

+(int)solution:(NSMutableArray *)A{
    NSInteger count = [A count];
    
    NSMutableDictionary *resultDic = [[NSMutableDictionary alloc]init];
    
    for (int i = 0; i < count; i++) {
        NSNumber *value = A[i];
        
        if ([value intValue] > 0 && resultDic[value] == nil) {

            resultDic[value] = [NSNull null];
        }
    }
    
    int result = 1;
    while (resultDic[[NSNumber numberWithInt:result]]) {
        result++;
    }
    
    return result;
}

@end
