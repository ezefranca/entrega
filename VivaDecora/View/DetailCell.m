//
//  DetailCell.m
//  VivaDecora
//
//  Created by Ezequiel on 25/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "DetailCell.h"

@implementation DetailCell

-(void)setup:(DetailViewModel *)model {
    self.titleLabel.text = model.name;
    self.subLabel.text = [NSString stringWithFormat:@"%@, %@", model.state, model.country];
    self.descLabel.text = model.address;
    self.countLabel.text = model.average_rating;
    [self.imageViewDetail setPin_updateWithProgress:YES];
    [self.imageViewDetail pin_setImageFromURL:[NSURL URLWithString:model.newest_image]];
    self.statsText.attributedText = model.stats;
    
    if (model.link == nil) {
        self.detailButton.hidden = true;
    } else {
        self.detailButton.hidden = false;
    }
}


-(void)setShadow:(UIColor *)color{
    
}

-(void)setBorders{
    [self.layer setBorderWidth:0.5f];
}

@end
