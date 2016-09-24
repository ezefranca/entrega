//
//  ListCell.h
//  VivaDecora
//
//  Created by Ezequiel on 9/23/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewModel.h"

@interface ListCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *subLabel;
@property (strong, nonatomic) IBOutlet UILabel *descLabel;
@property (strong, nonatomic) IBOutlet UILabel *countLabel;

-(void)setup: (ListViewModel*)model;

@end
