//
//  ListViewController+Delegate.m
//  VivaDecora
//
//  Created by Ezequiel on 9/23/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListViewController+Delegate.h"

@implementation ListViewController (Delegate)

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
        [[self navigationController]pushViewController:[self detailsController:indexPath] animated:true];
    }];
    
 
}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
     [[[collectionView cellForItemAtIndexPath:indexPath]layer]setShadowColor:[UIColor darkGrayColor].CGColor];
  [[collectionView cellForItemAtIndexPath:indexPath]setBackgroundColor:[UIColor whiteColor]];
}

-(DetailsViewController *)detailsController:(NSIndexPath *)indexPath{
    UIStoryboard *st = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetailsViewController *d = [st instantiateViewControllerWithIdentifier:CONTROLLER_DETAILS_IDENTIFIER];
    d.venue = [self.manager.models objectAtIndex:indexPath.row].venue;
    return d;
}

@end
