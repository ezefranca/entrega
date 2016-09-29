//
//  ListCell.m
//  VivaDecora
//
//  Created by Ezequiel on 9/23/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListCell.h"

@implementation ListCell

- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes
{
    return layoutAttributes;
}

-(void)setup:(ListViewModel *)model {
    self.titleLabel.text = model.venue;
    self.subLabel.text = model.section;
    self.descLabel.text = model.note;
    self.countLabel.text = model.views;
    [self.imageView setPin_updateWithProgress:YES];
    [self.imageView pin_setImageFromURL:[NSURL URLWithString:model.image]];
}

-(void)layoutSubviews{
    [super layoutSubviews];
    [self apparence];
}

-(void)apparence{
    [self setBorders];
    [self setShadow:[UIColor darkGrayColor]];
}

-(void)setBorders {
    
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = self.imageView.bounds;
    maskLayer.path = [UIBezierPath bezierPathWithRoundedRect:self.imageView.bounds
                                           byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight)
                                                 cornerRadii:CGSizeMake(10, 10)].CGPath;
    self.imageView.layer.mask = maskLayer;
    
    [self.layer setBorderColor:[UIColor clearColor].CGColor];
    [self.layer setBorderWidth:1.0f];
    [self.layer setCornerRadius:10.0f];
}

-(void)setShadow:(UIColor*)color {
    
    self.layer.masksToBounds = NO;
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowRadius = 8.0f;
    self.layer.shouldRasterize = NO;
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(self.frame.size.width/2 - (self.frame.size.width)/2, self.frame.size.height, self.frame.size.width, 10)].CGPath;
    
}

@end
