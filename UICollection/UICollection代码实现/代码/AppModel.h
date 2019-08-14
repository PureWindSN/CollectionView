//
//  AppModel.h
//  UICollection代码实现
//
//  Created by wind on 12/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppModel : NSObject

@property(nonatomic,copy) NSString *icon;

@property(nonatomic,copy) NSString *name;

-(instancetype)initWithDict:(NSDictionary *)dict;

+(instancetype)appModelWith:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
