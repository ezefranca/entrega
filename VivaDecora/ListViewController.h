//
//  ViewController.h
//  VivaDecora
//
//  Created by Ezequiel on 9/22/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListCell.h"
#import "ListViewManager.h"

#define CELL_REUSE_IDENTIFIER @"CellListIdentifier"

@interface ListViewController : UIViewController
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) ListCell *cell;
@property (strong, nonatomic) ListViewManager *manager;
@end

