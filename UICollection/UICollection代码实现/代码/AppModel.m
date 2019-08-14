//
//  AppModel.m
//  UICollection代码实现
//
//  Created by wind on 12/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import "AppModel.h"

@implementation AppModel

-(instancetype)initWithDict:(NSDictionary *)dict {
    
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)appModelWith:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
