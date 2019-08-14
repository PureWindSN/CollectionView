//
//  CustomCollectionViewController.m
//  UICollectionViewController
//
//  Created by wind on 14/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import "CustomCollectionViewController.h"

@interface CustomCollectionViewController ()

@end

@implementation CustomCollectionViewController

static NSString * const identifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    /**
     self.view UICollectionViewControllerWrapperview
     
     self.collectionView UICollectionView
     */
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:identifier];
    
    //设置背景颜色
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    /**
     取出 collectionView的flowlayout
     
     self.collectionViewLayout 只读的
     
     self.collectionView.collectionViewLayout 做一次强转
     */
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
    
    flowLayout.itemSize = CGSizeMake(100, 100);
    
    flowLayout.sectionFootersPinToVisibleBounds = YES;
    flowLayout.sectionHeadersPinToVisibleBounds = YES;
    
    //垂直滚动时，设置宽度无效
    flowLayout.headerReferenceSize = CGSizeMake(1, 50);
    flowLayout.footerReferenceSize = CGSizeMake(10, 70);
    
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
}

//屏幕旋转的时候调用
-(void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor redColor];
    
    return cell;
}

#pragma -
#pragma - 设置组头/尾 的时候要通过代理方法进行返回
/**
 UICollectionElementKindSectionHeader;
 UICollectionElementKindSectionFooter;
 查看方式: shift + command + o
 */
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *headerIdentifier = @"header";
    headerIdentifier = (kind == UICollectionElementKindSectionHeader ? @"header":@"footer");
    
    //    UICollectionReusableView *resuableView = [collectionView dequeueReusableCellWithReuseIdentifier:headerIdentifier forIndexPath:indexPath];
    
    UICollectionReusableView *resuableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:headerIdentifier forIndexPath:indexPath];
    
    
    
    return resuableView;
    
}

@end
