//
//  DetailCell.h
//  VivaDecora
//
//  Created by Ezequiel on 25/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListCell.h"
#import "DetailViewModel.h"
#import "FLAnimatedImageView.h"

@interface DetailCell : ListCell

@property (strong, nonatomic) IBOutlet UIImageView *imageViewDetail;
@property (strong, nonatomic) IBOutlet UITextView *statsText;
@property (strong, nonatomic) IBOutlet UIButton *detailButton;

-(void)setup: (DetailViewModel*)model;
-(void)setShadow:(UIColor*)color;

@end
