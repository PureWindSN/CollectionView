//
//  AppCell.h
//  Xib
//
//  Created by wind on 14/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppModel;

NS_ASSUME_NONNULL_BEGIN

@interface AppCell : UICollectionViewCell

@property(nonatomic,copy) AppModel *appModel;

@end

NS_ASSUME_NONNULL_END
