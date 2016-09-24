//
//  ListViewManager.m
//  VivaDecora
//
//  Created by Ezequiel on 9/24/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListViewManager.h"
#import "ListViewModel.h"

@implementation ListViewManager

-(instancetype)initWithViewModels:(NSMutableArray<ListViewModel *> *)models{
    self = [super init];
    self.models = models;
    if (self) {
        //[self setValues];
    }
    return self;
}

@end
