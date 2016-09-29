//
//  DetailsViewManager.m
//  VivaDecora
//
//  Created by Ezequiel on 29/09/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "DetailsViewManager.h"

@implementation DetailsViewManager

-(instancetype)initWithViewModels:(NSMutableArray<DetailViewModel *> *)models{
    self = [super init];
    if (self) {
        self.models = models;
    }
    return self;
}
@end
