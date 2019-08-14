//
//  AppCell.m
//  Xib
//
//  Created by wind on 14/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import "AppCell.h"

#import "AppModel.h"

@interface AppCell ()
//如果这册的时候使用的是appCell，而不是AppCell.xib 下面两个空间都是空的
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation AppCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setAppModel:(AppModel *)appModel {
    _appModel = appModel;
    
    _iconImageView.image = [UIImage imageNamed:appModel.icon];
    _nameLabel.text = appModel.name;
}

@end
