//
//  ViewController.m
//  Xib
//
//  Created by wind on 14/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import "ViewController.h"

#import "AppModel.h"
#import "AppCell.h"

@interface ViewController ()<UICollectionViewDataSource>

@property(nonatomic,strong) NSArray *dataArray;

@end

static NSString *identifier = @"collectionCell";

@implementation ViewController

-(NSArray *)dataArray {
    if (nil == _dataArray) {
        
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"app.plist" ofType:nil];
        
        NSArray *array     = [NSArray arrayWithContentsOfFile:filePath];
        
        NSMutableArray *mutableArray = [NSMutableArray array];
        
        for (int i = 0; i < array.count; i ++) {
            AppModel *appModel = [AppModel appModelWithDict:array[i]];
            [mutableArray addObject:appModel];
        }
        _dataArray = mutableArray;
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    
    collectionView.dataSource = self;
    
    //注册cell
    //[collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:identifier];
    UINib *nib = [UINib nibWithNibName:@"AppCell" bundle:nil];
    //把appCell对象读取出来
    AppCell *cell = [nib instantiateWithOwner:nil options:nil].lastObject;
    //根据xib中cell，设置itemsize的大小
    flowLayout.itemSize = cell.frame.size;
    
#warning 如果使用xib 这里必须注册为nib,不然 不会正常显示
    [collectionView registerNib:nib forCellWithReuseIdentifier:identifier];
    
    //设置距离四周的间距
    flowLayout.sectionInset = UIEdgeInsetsMake(40, 10, 0, 10);
    
    collectionView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:collectionView];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    AppCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor orangeColor];
    
    AppModel *model = self.dataArray[indexPath.row];
    cell.appModel   = model;
    
    return cell;
}

@end
