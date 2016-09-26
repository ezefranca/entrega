//
//  DetailCell.h
//  VivaDecora
//
//  Created by Ezequiel on 25/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListCell.h"

@interface DetailCell : ListCell

@property (strong, nonatomic) IBOutlet UILabel *status1;
@property (strong, nonatomic) IBOutlet UILabel *status2;
@property (strong, nonatomic) IBOutlet UILabel *status3;
@property (strong, nonatomic) IBOutlet UILabel *status4;

-(void)setup: (ListViewModel*)model;
-(void)setShadow:(UIColor*)color;

@end
