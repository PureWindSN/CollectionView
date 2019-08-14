//
//  AppCell.m
//  04-代码实现应用管理
//
//  Created by kevin on 15/11/16.
//  Copyright © 2015年 cz. All rights reserved.
//

#import "AppModel.h"

@implementation AppModel

- (instancetype)initWithDict:(NSDictionary *)dict {
  if (self = [super init]) {
    [self setValuesForKeysWithDictionary:dict];
  }
  
  return self;
}

+ (instancetype)appModelWithDict:(NSDictionary *)dict {
  return [[self alloc] initWithDict:dict];
}

@end
