//
//  HeroModel.h
//  07-英雄展示
//
//  Created by apple on 15/11/17.
//  Copyright © 2015年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HeroModel : NSObject

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *icon;

@property (nonatomic, copy) NSString *intro;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)heroModelWith:(NSDictionary *)dict;

@end
