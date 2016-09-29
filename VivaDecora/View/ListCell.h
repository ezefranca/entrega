//
//  ListCell.h
//  VivaDecora
//
//  Created by Ezequiel on 9/23/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "ListViewModel.h"
#import "FLAnimatedImageView.h"
#import <PINRemoteImage/PINImageView+PINRemoteImage.h>

#define GIF_URL [[NSBundle mainBundle]URLForResource: @"loader" withExtension:@"gif"]

@protocol CellStyle

@optional -(void)setShadow:(UIColor*)color;
@optional -(void)setBorders;

@end


@interface ListCell : UICollectionViewCell <CellStyle>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *subLabel;
@property (strong, nonatomic) IBOutlet UILabel *descLabel;
@property (strong, nonatomic) IBOutlet UILabel *countLabel;

-(void)setup:(id)model;

@end
