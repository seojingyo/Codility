//
//  BinaryGap.m
//  Codility
//
//  Created by 122316 on 2017. 5. 31..
//  Copyright © 2017년 seojingyo. All rights reserved.
//

/**
 
 BinaryGap:
 
 A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.
 
 For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps.
 
 Write a function:
 
 int solution(int N);
 that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.
 
 For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5.
 
 Assume that:
 
 N is an integer within the range [1..2,147,483,647].
 Complexity:
 
 expected worst-case time complexity is O(log(N));
 expected worst-case space complexity is O(1).
 
 */

#import "BinaryGap.h"

@implementation BinaryGap

+ (int)solution:(int)N{
    int gap = 0;
    int maxGap = 0;
    
    NSString *binaryValue = [BinaryGap Dec2Bin:N];
    
    for (int i = 1; i < binaryValue.length; i++){
        
        NSString *leftString = [binaryValue substringWithRange:NSMakeRange(i-1, 1)];
        NSString *rightString = [binaryValue substringWithRange:NSMakeRange(i, 1)];
        
        if ([leftString isEqualToString:@"1"] && [rightString isEqualToString:@"0"]){
            gap = 1;
        }else if([leftString isEqualToString:@"0"] && [rightString isEqualToString:@"0"]){
            gap += 1;
        }else if([leftString isEqualToString:@"0"] && [rightString isEqualToString:@"1"]){
            maxGap = MAX(maxGap, gap);
        }
        
    }
    return maxGap;
}


+ (NSString *)Dec2Bin:(int)iDec {
    if (iDec == 1 || iDec == 0){
        return [NSString stringWithFormat:@"%d", iDec];
    }
    return [NSString stringWithFormat:@"%@%d", [BinaryGap Dec2Bin:iDec / 2], iDec % 2];
}

@end
