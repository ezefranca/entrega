//
//  DetailsViewController+Delegate.m
//  VivaDecora
//
//  Created by Ezequiel on 25/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "DetailsViewController+Delegate.h"


@implementation DetailsViewController (Delegate)

-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [[collectionView cellForItemAtIndexPath:indexPath]setBackgroundColor:[UIColor whiteColor]];
    return 1;
}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
    [[[collectionView cellForItemAtIndexPath:indexPath]layer]setShadowColor:[UIColor darkGrayColor].CGColor];
    [[collectionView cellForItemAtIndexPath:indexPath]setBackgroundColor:[UIColor whiteColor]];
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
}


@end
