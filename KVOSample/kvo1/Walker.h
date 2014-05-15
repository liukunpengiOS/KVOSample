//
//  Walker.h
//  kvo1
//
//  Created by qingyun on 14-5-15.
//  Copyright (c) 2014年 LiuKunPeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Walker : NSObject

@property (nonatomic) NSUInteger age;
@property (nonatomic,retain) NSString *name;

- (id)initWithName:(NSString*)name age:(NSUInteger)age;

@end
