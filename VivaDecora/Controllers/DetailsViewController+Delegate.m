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

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [self.collectionView.collectionViewLayout invalidateLayout];
    UICollectionViewCell *__weak cell = [self.collectionView cellForItemAtIndexPath:indexPath];
    
    void (^animateChangeWidth)() = ^()
    {
        cell.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.0, 1.0);
    };
    cell.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.95, 0.95);
    [UIView transitionWithView:[collectionView cellForItemAtIndexPath:indexPath] duration:0.1f options: UIViewAnimationOptionCurveLinear animations:animateChangeWidth completion:^(BOOL finished) {
        
    }];
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
