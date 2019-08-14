//
//  HeroCell.h
//  Storyboard(英雄)
//
//  Created by wind on 14/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HeroModel;

NS_ASSUME_NONNULL_BEGIN

@interface HeroCell : UICollectionViewCell

@property (nonatomic, strong) HeroModel *heroModel;

@end

NS_ASSUME_NONNULL_END
