//
//  AppCell.m
//  Storyboard
//
//  Created by wind on 14/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import "AppCell.h"

#import "AppModel.h"

@interface AppCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end

@implementation AppCell

-(void)setAppModel:(AppModel *)appModel {
    _appModel = appModel;
    
    _iconImageView.image = [UIImage imageNamed:appModel.icon];
    _nameLabel.text = appModel.name;
}

@end
