//
//  ViewController.m
//  Storyboard(英雄)
//
//  Created by wind on 14/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import "ViewController.h"

#import "HeroModel.h"
#import "HeroCell.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *dataArray;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *flowLayout;

@end

static NSString *identifier = @"collectionCell";
@implementation ViewController

#pragma mark -
#pragma mark -  懒加载
- (NSArray *)dataArray {
    if (nil == _dataArray) {
        
        // 路
        NSString *path = [[NSBundle mainBundle] pathForResource:@"heros.plist" ofType:nil];
        
        // 读
        
        NSArray *tempArray = [NSArray arrayWithContentsOfFile:path];
        
        // 变
        NSMutableArray *mutable = [NSMutableArray array];
        
        // 转
        for (NSDictionary *dict in tempArray) {
            HeroModel *model = [HeroModel heroModelWith:dict];
            
            [mutable addObject:model];
        }
        
        // 赋
        _dataArray = mutable;
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 设置item的size
    _flowLayout.itemSize = CGSizeMake(self.collectionView.frame.size.width, 80);
}

#pragma mark -
#pragma mark -  屏幕旋转的时候调用
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
    //    NSLog(@"%@", NSStringFromCGSize(size));
    
    // 修改flowLayout中 itemSize的 宽 为  size.width
    _flowLayout.itemSize = CGSizeMake(size.width, 80);
    
}


// 组
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


// 行

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArray.count;
}



// 内容
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    HeroCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    //    cell.backgroundColor = [UIColor redColor];
    
    cell.heroModel = self.dataArray[indexPath.item];
    
    return cell;
}


@end
