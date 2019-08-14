//
//  AppCell.m
//  UICollection代码实现
//
//  Created by wind on 12/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import "AppCell.h"
#import "AppModel.h"

@interface AppCell ()

@property(nonatomic,weak) UIImageView *iconImageview;

@property(nonatomic,weak) UILabel *nameLabel;

@end

@implementation AppCell

-(instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        /*
        CGSize cellSize = self.contentView.frame.size;
        
        //**初始化时，设置一次subviews's frame
        //添加imageView
        CGFloat iconWidth = cellSize.width * 0.6;
        CGFloat iconX     = (cellSize.width - iconWidth)/2;
        UIImageView *iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(iconX, 0, iconWidth, iconWidth)];
        //对属性赋值
        self.iconImageview = iconImageView;
        [self.contentView addSubview:iconImageView];
        
        //添加label
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(iconImageView.frame), cellSize.width, 20)];
        self.nameLabel = nameLabel;
        //设置label的属性
        nameLabel.font = [UIFont systemFontOfSize:13];
        nameLabel.textAlignment = NSTextAlignmentCenter;
        nameLabel.textColor = [UIColor blackColor];
        nameLabel.text = @"爸爸去哪了";
        [self.contentView addSubview:nameLabel];
        */

        
        //添加imageView
        UIImageView *iconImageView = [[UIImageView alloc] init];
        //对属性赋值
        self.iconImageview = iconImageView;
        [self.contentView addSubview:iconImageView];
        
        //添加label
        UILabel *nameLabel = [[UILabel alloc] init];
        self.nameLabel = nameLabel;
        //设置label的属性
        nameLabel.font = [UIFont systemFontOfSize:13];
        nameLabel.textAlignment = NSTextAlignmentCenter;
        nameLabel.textColor = [UIColor blackColor];
        nameLabel.text = @"爸爸去哪了";
        [self.contentView addSubview:nameLabel];
        
    }
    return self;
}

//当view的size 放生变化时候调用(仅当宽、高发生变化时)
-(void)layoutSubviews {
    [super layoutSubviews];
    
    CGSize cellSize = self.contentView.frame.size;
    CGFloat iconWidth = cellSize.width * 0.6;
    CGFloat iconX     = (cellSize.width - iconWidth)/2;
    
    _iconImageview.frame = CGRectMake(iconX, 0, iconWidth, iconWidth);
    _nameLabel.frame     = CGRectMake(0, CGRectGetMaxY(_iconImageview.frame), cellSize.width, 20);
    
}

// 重写set方法
-(void)setAppModel:(AppModel *)appModel {
    _appModel = appModel;
    
    _iconImageview.image = [UIImage imageNamed:appModel.icon];
    _nameLabel.text      = appModel.name;
}

@end
