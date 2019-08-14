//
//  ViewController.m
//  UICollection代码实现
//
//  Created by wind on 12/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import "ViewController.h"

#import "AppCell.h"
#import "AppModel.h"


@interface ViewController ()<UICollectionViewDataSource>

@property(nonatomic,strong) NSArray *dataArr;

@property(nonatomic,strong) UICollectionViewFlowLayout *flowLayout;

@end

//定义重用标识符
static NSString *identifier = @"collectionCell";

@implementation ViewController

-(NSArray *)dataArr {
    
    if (nil == _dataArr) {
        
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"app.plist" ofType:nil];
        
        NSArray *tempArray = [NSArray arrayWithContentsOfFile:filePath];
        
        NSMutableArray *mutable = [NSMutableArray array];
        
        for (NSDictionary *dict in tempArray) {
            AppModel *appModel = [AppModel appModelWith:dict];
            [mutable addObject:appModel];
        }
        
        _dataArr = mutable;
        
    }
    
    return _dataArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.实例化一个collectionViewFloaLayout
    _flowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    //修改item大小
    _flowLayout.itemSize = CGSizeMake(100, 100);
    
    //修改cell距离view的边距
    _flowLayout.sectionInset = UIEdgeInsetsMake(40, 10, 0, 10);
    
    //最小列之间的间距(注:最小、不是一定)
    _flowLayout.minimumInteritemSpacing = 30;
    //最小行间距
    _flowLayout.minimumLineSpacing = 100;
    
    _flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    
    
    //2.实例化一个collectionView
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:_flowLayout];
    
    //3.注册一个cell
    [collectionView registerClass:[AppCell class] forCellWithReuseIdentifier:identifier];
    
    //4.设置数据源代理
    collectionView.dataSource = self;
    
    //5.添加到控制器的view上
    [self.view addSubview:collectionView];
    
    //6.设置collectionView的背景色
    collectionView.backgroundColor = [UIColor whiteColor];
}

//组
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

//行
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArr.count;
}

//每一行显示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    AppCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    
    AppModel *appModel = self.dataArr[indexPath.row];
    cell.appModel = appModel;
    
    return cell;
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    _flowLayout.itemSize = CGSizeMake(200, 200);
}



@end
