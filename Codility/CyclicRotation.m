//
//  CyclicRotation.m
//  Codility
//
//  Created by 122316 on 2017. 5. 31..
//  Copyright © 2017년 seojingyo. All rights reserved.
//
/*
 A zero-indexed array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index, and the last element of the array is also moved to the first place.
 
 For example, the rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7]. The goal is to rotate array A K times; that is, each element of A will be shifted to the right by K indexes.
 
 Write a function:
 
 class Solution { public int[] solution(int[] A, int K); }
 
 that, given a zero-indexed array A consisting of N integers and an integer K, returns the array A rotated K times.
 
 For example, given array A = [3, 8, 9, 7, 6] and K = 3, the function should return [9, 7, 6, 3, 8].
 
 Assume that:
 
 N and K are integers within the range [0..100];
 each element of array A is an integer within the range [−1,000..1,000].
 In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.
 */

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
