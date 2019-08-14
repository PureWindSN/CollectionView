//
//  HeroCell.m
//  Storyboard(英雄)
//
//  Created by wind on 14/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import "HeroCell.h"
#import "HeroModel.h"

@interface HeroCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *introLabel;


@end

@implementation HeroCell

- (void)setHeroModel:(HeroModel *)heroModel {
    _heroModel = heroModel;
    
    _iconImageView.image = [UIImage imageNamed:heroModel.icon];
    _nameLabel.text = heroModel.name;
    _introLabel.text = heroModel.intro;
}

@end
