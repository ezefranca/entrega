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
#import "ViewController.h"

#define CELL_LIST_REUSE_IDENTIFIER @"CellListIdentifier"
#define CONTROLLER_DETAILS_IDENTIFIER @"DetailController"

@interface ListViewController : ViewController
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) UIRefreshControl *refreshControl;
@property (strong, nonatomic) ListCell *cell;
@property (strong, nonatomic) ListViewManager *manager;
@end

