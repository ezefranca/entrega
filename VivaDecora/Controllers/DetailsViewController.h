//
//  DetailsViewController.h
//  VivaDecora
//
//  Created by Ezequiel on 25/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "DetailCell.h"
#import "DetailsApi.h"
#import <UIKit/UIKit.h>

#define CELL_DETAIL_REUSE_IDENTIFIER @"CellDetailIdentifier"

@interface DetailsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) DetailCell *cell;
@property (strong, nonatomic) NSString *venue;
//@property (strong, nonatomic) ListViewManager *manager;
@end
