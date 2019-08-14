//
//  AppCell.h
//  04-代码实现应用管理
//
//  Created by kevin on 15/11/16.
//  Copyright © 2015年 cz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppModel : NSObject

@property (nonatomic, copy) NSString *name;


@property (nonatomic, copy) NSString *icon;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)appModelWithDict:(NSDictionary *)dict;

@end
