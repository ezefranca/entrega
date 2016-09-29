//
//  ListViewManager.m
//  VivaDecora
//
//  Created by Ezequiel on 9/24/16.
//  Copyright © 2016 Ezequiel França @ezefranca. All rights reserved.
//

#import "ListViewManager.h"

@implementation ListViewManager

-(instancetype)initWithViewModels:(NSMutableArray<ListViewModel *> *)models{
    self = [super init];
    if (self) {
        self.models = models;
    }
    return self;
}

@end
