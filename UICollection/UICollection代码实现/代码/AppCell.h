//
//  AppCell.h
//  UICollection代码实现
//
//  Created by wind on 12/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class AppModel;


@interface AppCell : UICollectionViewCell

@property (nonatomic,strong) AppModel *appModel;

@end

NS_ASSUME_NONNULL_END
