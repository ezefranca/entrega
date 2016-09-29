//
//  DetailsViewController+Datasource.m
//  VivaDecora
//
//  Created by Ezequiel on 25/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "DetailsViewController+Datasource.h"

@implementation DetailsViewController (DataSource)

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.manager.models.count;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    return [self getReusableUICollectionViewCell:collectionView forIndexPath:indexPath];
}

-(void)collectionView:(UICollectionView *)collectionView willDisplayCell:(nonnull UICollectionViewCell *)cell forItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
    self.cell = (DetailCell *)cell;
    [self.cell setup:[self.manager.models objectAtIndex:indexPath.row]];
}

-(ListCell *)getReusableUICollectionViewCell: (UICollectionView *)collectionView forIndexPath:(NSIndexPath *)indexPath{
    self.cell = [collectionView dequeueReusableCellWithReuseIdentifier:CELL_DETAIL_REUSE_IDENTIFIER forIndexPath:indexPath];
    return self.cell;
}

@end
