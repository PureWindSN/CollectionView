//
//  AppModel.m
//  Xib
//
//  Created by wind on 14/8/2019.
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

+(instancetype)appModelWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
