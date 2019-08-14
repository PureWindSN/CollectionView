//
//  AppModel.h
//  Xib
//
//  Created by wind on 14/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppModel : NSObject

@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *icon;

-(instancetype)initWithDict:(NSDictionary *)dict;

+(instancetype)appModelWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
