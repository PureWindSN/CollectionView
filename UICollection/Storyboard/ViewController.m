//
//  ViewController.m
//  Storyboard
//
//  Created by wind on 14/8/2019.
//  Copyright © 2019 wind. All rights reserved.
//

#import "ViewController.h"

#import "AppModel.h"
#import "AppCell.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *dataArray;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

static NSString *identifier = @"collection";

@implementation ViewController
- (NSArray *)dataArray {
    if (nil == _dataArray) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"app.plist" ofType:nil];
        
        NSArray *tempArray = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *mutable = [NSMutableArray array];
        
        for (NSDictionary *dict in tempArray) {
            AppModel *model = [AppModel appModelWithDict:dict];
            
            [mutable addObject:model];
            
        }
        _dataArray = mutable;
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _collectionView.backgroundColor = [UIColor whiteColor];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    AppCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    AppModel *appModel = self.dataArray[indexPath.item];
    
    cell.appModel = appModel;
    
    return cell;
    
}

@end
