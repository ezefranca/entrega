//
//  ListCell.m
//  VivaDecora
//
//  Created by Ezequiel on 9/23/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListCell.h"

@implementation ListCell

-(void)setup:(ListViewModel *)model {
    self.titleLabel.text = model.venue;
}

-(void)awakeFromNib{
    [super awakeFromNib];
 //   [self setBorders];
}

- (void)setBounds:(CGRect)bounds
{
    [super setBounds:bounds];
    
    // Round the banner's corners
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.imageView.bounds
                                                   byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight)
                                                         cornerRadii:CGSizeMake(10, 10)];
    
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = self.imageView.bounds;
    maskLayer.path = maskPath.CGPath;
    self.imageView.layer.mask = maskLayer;
    
    [self.layer setBorderColor:[UIColor whiteColor].CGColor];
    [self.layer setBorderWidth:1.0f];
    [self.layer setCornerRadius:10.0f];
        
    // Add shadow
    self.layer.masksToBounds = NO;
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowRadius = 8.0f;
    self.layer.shouldRasterize = NO;
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(self.frame.size.width/2 - (self.frame.size.width)/2, self.frame.size.height, self.frame.size.width, 10)].CGPath;
    


}
//-(void)setBorders {
//    
//
//   
//    [self.layer setBorderColor:[UIColor whiteColor].CGColor];
////    [self.layer setBorderWidth:1.0f];
////     [self.layer setCornerRadius:8.0f];
//    
////    // Round the banner's corners
////    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.imageView.bounds
////                                                   byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight)
////                                                         cornerRadii:CGSizeMake(10, 10)];
////    
////    CAShapeLayer *maskLayer = [CAShapeLayer layer];
////    maskLayer.frame = self.imageView.bounds;
////    maskLayer.path = maskPath.CGPath;
////    self.imageView.layer.mask = maskLayer;
//    
//    // Round cell corners
//    self.layer.cornerRadius = 8;
//    
//    // Add shadow
//    self.layer.masksToBounds = NO;
//    self.layer.shadowOpacity = 0.75f;
//    self.layer.shadowRadius = 8.0;
//    self.layer.shouldRasterize = NO;
//    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:CGRectMake(self.frame.size.width/2 - (self.frame.size.width - 50)/2, self.frame.size.height, self.frame.size.width - 50, 10)].CGPath;
//
//
//}

@end
