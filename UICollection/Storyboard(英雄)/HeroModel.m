//
//  HeroModel.m
//  07-英雄展示
//
//  Created by apple on 15/11/17.
//  Copyright © 2015年 itcast. All rights reserved.
//

#import "HeroModel.h"

@implementation HeroModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}


+ (instancetype)heroModelWith:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
