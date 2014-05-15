//
//  Walker.m
//  kvo1
//
//  Created by qingyun on 14-5-15.
//  Copyright (c) 2014年 LiuKunPeng. All rights reserved.
//

#import "Walker.h"

@implementation Walker


- (id)initWithName:(NSString *)name age:(NSUInteger)age {
    
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}
@end
