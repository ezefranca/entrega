//
//  ViewController.h
//  VivaDecora
//
//  Created by Ezequiel on 9/22/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "DetailsViewController.h"
#import "ListCell.h"
#import "ListViewManager.h"
#import <UIKit/UIKit.h>

#define CELL_LIST_REUSE_IDENTIFIER @"CellListIdentifier"
#define CONTROLLER_DETAILS_IDENTIFIER @"DetailController"

@interface ListViewController : UIViewController
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) ListCell *cell;
@property (strong, nonatomic) ListViewManager *manager;
@end

